package ru.itis.ftracker.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.itis.ftracker.entity.User;

@Controller
public class DispatcherController {
    @GetMapping
    public String dispatch(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        if (user == null) {
            return "redirect:/welcome";
        }
        return "redirect:/home";

    }
}
