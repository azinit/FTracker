package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.ftracker.entity.Advice;
import ru.itis.ftracker.entity.MotivationalQuote;
import ru.itis.ftracker.entity.NutritionProgram;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.repository.AdviceRepository;

import java.util.List;
import java.util.Random;

@Service
public class AdviceService {
    @Autowired
    private AdviceRepository adviceRepository;

    public List<Advice> findAll() {
        return adviceRepository.findAllByOrderById();
    }

    public List<Advice> findAll(User user) {
        return adviceRepository.findAllByProgramOrderById(user.getProgramActive());
    }

    public Advice getRandom(User user) {
        Random rand = new Random();
        List<Advice> advices = (user == null) ? findAll() : findAll(user);
        if (advices.isEmpty()) {
            String defaultEmptyMsg = "По данной программе питания пока недоступно ни одного совета";
            return new Advice(
                    new NutritionProgram(
                            "Неопознанная программа питания", "undefined",
                            0.0, 0.0, 0.0
                    ),
                    defaultEmptyMsg,
                    ""
            );
        }
        return advices.get(rand.nextInt(advices.size()));
    }
    // view, load, filter, tag, ...
}
