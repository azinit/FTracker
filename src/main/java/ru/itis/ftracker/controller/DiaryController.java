package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itis.ftracker.entity.Mood;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.service.DiaryService;

import java.util.List;

@Controller
@RequestMapping("/diary")
public class DiaryController {
    @Autowired
    private DiaryService diaryService;

    @GetMapping
    public String diary(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        // TODO: Add filter (from start, from end ...)
        List<Record> records = diaryService.findAllReversed(user);
        model.addAttribute("records", records);
        return "diary/diary";
    }

    @GetMapping("today")
    public String addRecord(Model model) {
        return "diary/today/record";
    }

    @PostMapping("today")
    public String submitRecord(
            @AuthenticationPrincipal User user,
            @RequestParam Double proteins,
            @RequestParam Double fats,
            @RequestParam Double carbohydrates,
            @RequestParam Double weight,
            @RequestParam(defaultValue = "OK") String mood,
//            @RequestParam ("file") MultipartFile photo,
            @RequestParam(defaultValue = "*no comments*") String comment
    ) {
        Mood enumMood = Mood.valueOf(mood);
        Record record = new Record(
                weight, proteins, fats, carbohydrates,
                diaryService.getProgramDay(user),
                "dwadwa", comment,
                enumMood, user
        );
        boolean recordAdded = diaryService.add(record);
        if (recordAdded) {
            user.updateDay();
        }

        // else: throws errors
        return "redirect:/diary";
    }
}
