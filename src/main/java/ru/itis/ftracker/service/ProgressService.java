package ru.itis.ftracker.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.ftracker.entity.NutritionProgram;
import ru.itis.ftracker.repository.NutritionProgramRepository;

@Service
public class ProgressService {
    @Autowired
    private NutritionProgramRepository nutritionProgramRepository;
    // shortProgress
    // fullProgress
    // chartTo
    // + NP
}
