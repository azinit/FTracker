package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itis.ftracker.service.AdviceService;

@Controller
@RequestMapping("advices")
public class AdvicesController {
    @Autowired
    private AdviceService adviceService;

    @GetMapping
    public String main(Model model) {
//        model.addAttribute("name", "{__advices-page__}");
        model.addAttribute("advices", adviceService.findAll());
        return "advices/advices";
    }
}
