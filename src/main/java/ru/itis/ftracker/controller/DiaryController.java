package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.itis.ftracker.entity.Mood;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.service.DiaryService;

import java.util.Date;

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
        Iterable<Record> records = diaryService.findAllReversed(user);
        model.addAttribute("records", records);
//        model.addAttribute("name", "{__diary-page__}");
        return "diary/diary";
    }

    @GetMapping("record/new")
    public String addRecord(Model model) {
        return "diary/record";
    }

    @PostMapping("record/new")
    public String submitRecord(
            @AuthenticationPrincipal User user,
            @RequestParam Double proteins,
            @RequestParam Double fats,
            @RequestParam Double carbohydrates,
            @RequestParam Double weight,
            @RequestParam String mood,
//            @RequestParam ("file") MultipartFile photo,
            @RequestParam String comment
    ) {
        Mood enumMood = Mood.valueOf(mood);
        Record record = new Record(
                weight, proteins, fats, carbohydrates,
                diaryService.getProgramDay(user), new Date(),
                "dwadwa", comment,
                enumMood, user
        );

        diaryService.add(record);
        return "redirect:/diary";
    }
}
