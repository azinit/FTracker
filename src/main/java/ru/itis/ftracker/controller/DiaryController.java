package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.service.DiaryService;

@Controller
public class DiaryController {
    @Autowired
    private DiaryService diaryService;

    @GetMapping("/diary")
    public String diary(Model model) {
        // TODO: Add filter (from start, from end ...)
        Iterable<Record> records = diaryService.findAllReversed();
        model.addAttribute("records", records);
//        model.addAttribute("name", "{__diary-page__}");
        return "diary/diary";
    }

    @GetMapping("/diary/record/new")
    public String record(Model model) {
        return "diary/record";
    }

}
