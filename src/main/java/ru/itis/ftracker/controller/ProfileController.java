package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.service.DiaryService;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("profile")
public class ProfileController {
    @Autowired
    private DiaryService diaryService;

    @GetMapping
    public String profile(
            @AuthenticationPrincipal User user,
            Model model
    ) {
//        List<Record> records = diaryService.getRecords(user);
//        boolean isUndefinedProgress = records.isEmpty();
        Record currentState = diaryService.getCurrentState(user);
        String weight = (currentState == null) ? "(?)" : currentState.getWeight().toString();
        model.addAttribute("weight", weight);
        model.addAttribute("user", user);
        return "profile/profile";
    }
}
