package ru.itis.ftracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/welcome")
public class WelcomeController {
    @GetMapping
    public String main(Model model) {
        return "welcome/welcome";
    }
}
