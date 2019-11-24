package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.Advice;
import ru.itis.ftracker.entity.NutritionProgram;

import java.util.List;

public interface AdviceRepository extends CrudRepository<Advice, Long> {
    List<Advice> findAllByOrderById();
    List<Advice> findAllByProgramOrderById(NutritionProgram program);
}
