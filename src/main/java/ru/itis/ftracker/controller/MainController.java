package ru.itis.ftracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class MainController {
    @GetMapping
    public String home(Model model) {
//        model.addAttribute("name", "{__main-page__}");
        return "home/home";
    }
}
