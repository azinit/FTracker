package ru.itis.ftracker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DiaryController {
    @GetMapping("/diary")
    public String diary(Model model) {
        model.addAttribute("name", "{__diary-page__}");
        return "diary/diary";
    }

    @GetMapping("/diary/record/new")
    public String record(Model model) {
        return "diary/record";
    }
}
