package ru.itis.ftracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("profile")
public class ProfileController {
    @GetMapping
    public String main(Model model) {
        model.addAttribute("name", "{__profile-page__}");
        return "profile/profile";
    }
}
