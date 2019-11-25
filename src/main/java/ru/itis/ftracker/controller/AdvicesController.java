package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itis.ftracker.entity.NutritionProgram;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.service.AdviceService;
import ru.itis.ftracker.service.ProgressService;

@Controller
@RequestMapping("advices")
public class AdvicesController {
    @Autowired
    private AdviceService adviceService;

    @GetMapping
    public String advicesList(
            @AuthenticationPrincipal User user,
            Model model
    ) {
//        model.addAttribute("name", "{__advices-page__}");
        model.addAttribute("program", user.getProgramActive());
        model.addAttribute("advices", adviceService.findAll(user));
        return "advices/advices";
    }
}
