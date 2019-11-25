package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.ftracker.entity.NutritionProgram;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.entity.Workload;
import ru.itis.ftracker.repository.NutritionProgramRepository;

// TODO: DiaryService
@Service
public class ProgressService {
    @Autowired
    private NutritionProgramRepository nutritionProgramRepository;

    public Double totalRecommendProteins(Double weight, NutritionProgram program) {
        return weight * program.getRecommendProteins();
    }

    public Double totalRecommendFats(Double weight, NutritionProgram program) {
        return weight * program.getRecommendFats();
    }

    public Double totalRecommendCarbohydrates(Double weight, NutritionProgram program) {
        return weight * program.getRecommendCarbohydrates();
    }

    public Boolean isAcceptableValues(Double value, Double totalValue, Workload workload) {
        Double factor = workload.getFactor();
        Double ratio = value / totalValue;
        // 0.5 (f) ... 1.0 ... 1.5 (1 + f)
        return 1 - factor <= ratio && ratio <= 1 + factor;
    }

    public Double diffProgValue(Double value, Double totalValue, Workload workload) {
        Double factor = (workload == null) ? 0.5 : workload.getFactor();
        Double ratio = value / totalValue;
        Double NO_DEVIATION = 0.0;
        // >>> if ideal - common, really?)
        if (ratio == 1.0) {
            return NO_DEVIATION;
        }
        // >>> if overdo?
        if (ratio > 1.0) {
            Double maxBorder = factor + 1;
            Double diff = ratio - maxBorder;
            return (diff > 0) ? diff : NO_DEVIATION;
        }
        // >>> if underdo?
        Double minBorder = 1 - factor;
        Double diff = (ratio - minBorder);
        return (diff < 0) ? diff : NO_DEVIATION;
    }

    public Double diffPrevValue(Double prevValue, Double actualValue) {
        return actualValue - prevValue;
    }


    public void extend(Record actual, Record prev) {
        User user = actual.getUser();
        NutritionProgram prog = user.getProgramActive();
        Workload workload = user.getWorkload();
        // OPTIMIZE!
        // >>> set diff prev
        actual.setDiffPrevWeight(diffPrevValue(prev.getWeight(), actual.getWeight()));
        actual.setDiffPrevFats(diffPrevValue(prev.getFats(), actual.getFats()));
        actual.setDiffPrevProteins(diffPrevValue(prev.getProteins(), actual.getProteins()));
        actual.setDiffPrevCarbohydrates(diffPrevValue(prev.getCarbohydrates(), actual.getCarbohydrates()));

        // OPTIMIZE!
        // >>> set diff prog
        actual.setDiffProgProteins(diffProgValue(
                actual.getProteins(),
                totalRecommendProteins(actual.getWeight(), prog),
                workload
        ));
        actual.setDiffProgFats(diffProgValue(
                actual.getFats(),
                totalRecommendFats(actual.getWeight(), prog),
                workload
        ));
        actual.setDiffProgCarbohydrates(diffProgValue(
                actual.getCarbohydrates(),
                totalRecommendCarbohydrates(actual.getWeight(), prog),
                workload
        ));
    }

//    public NutritionProgram defaultProg(User user) {
//        NutritionProgram prog = user.getProgramActive();
//        if (prog == null) { prog = defaultProgram(); }
//        return prog;
//    }

    public NutritionProgram defaultProgram() {
        return nutritionProgramRepository.findByName("Похудеть");
    }
    // shortProgress
    // fullProgress
    // chartTo
    // + NP
}
