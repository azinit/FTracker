package ru.itis.ftracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LandingController {
    @GetMapping
    public String main(Model model) {
        model.addAttribute("name", "{__landing-page__}");
        return "landing/landing";
    }
}
