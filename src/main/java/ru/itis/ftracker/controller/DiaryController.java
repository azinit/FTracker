package ru.itis.ftracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("diary")
public class DiaryController {
    @GetMapping
    public String main(Model model) {
        model.addAttribute("name", "{__diary-page__}");
        return "diary/diary";
    }
}
