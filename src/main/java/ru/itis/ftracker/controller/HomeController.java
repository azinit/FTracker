package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.service.AdviceService;
import ru.itis.ftracker.service.MotivationService;

@Controller
@RequestMapping("home")
public class HomeController {
    @Autowired
    private MotivationService motivationService;

    @Autowired
    private AdviceService adviceService;
    @GetMapping
    public String home(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        model.addAttribute("advice", adviceService.getRandom(user));
        model.addAttribute("quote", motivationService.getRandom());
//        model.addAttribute("name", "{__main-page__}");
        return "home/home";
    }
}
