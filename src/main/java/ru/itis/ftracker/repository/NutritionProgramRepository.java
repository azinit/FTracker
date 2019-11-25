package ru.itis.ftracker.repository;

import org.springframework.data.repository.CrudRepository;
import ru.itis.ftracker.entity.NutritionProgram;

public interface NutritionProgramRepository extends CrudRepository<NutritionProgram, Long> {
    NutritionProgram findByName(String name);
}
