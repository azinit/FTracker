package ru.itis.ftracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("advices")
public class AdvicesController {
    @GetMapping
    public String main(Model model) {
        model.addAttribute("name", "{__advices-page__}");
        return "advices/advices";
    }
}
