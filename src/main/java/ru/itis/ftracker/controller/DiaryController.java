package ru.itis.ftracker.controller;

import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ru.itis.ftracker.entity.Mood;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.service.DiaryService;
import ru.itis.ftracker.service.FileService;
import ru.itis.ftracker.service.ProgressService;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/diary")
public class DiaryController {
    @Autowired
    private DiaryService diaryService;

    @Autowired
    private FileService fileService;

    @GetMapping
    public String diary(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        // TODO: Add filter (from start, from end ...)
        List<Record> records = diaryService.findAllReversed(user);
        model.addAttribute("already_created", diaryService.alreadyCreated(user));
        model.addAttribute("program", user.getProgramActive());
        model.addAttribute("workload", user.getWorkload());
        model.addAttribute("records", records);
        return "diary/diary";
    }

    @GetMapping("{user}")
    public String userDiary(
            @AuthenticationPrincipal User currentUser,
            @PathVariable User user,
            Model model
    ) {
        List<Record> records = diaryService.findAllReversed(user);
        model.addAttribute("program", user.getProgramActive());
        model.addAttribute("workload", user.getWorkload());
        model.addAttribute("hub_user", user);
        model.addAttribute("records", records);
        return "diary/diary";
    }

    @GetMapping("today")
    public String addRecord(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        if (diaryService.alreadyCreated(user)) {
            return "redirect:/diary/update";
        }
        return "diary/today/record";
    }

    @GetMapping("update")
    public String updateRecord(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        if (!diaryService.alreadyCreated(user)) {
            return "redirect:/diary/today";
        }

        Record currentState = diaryService.getCurrentState(user);
        model.addAttribute("state", currentState);
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
            @RequestParam("file") MultipartFile file,
            @RequestParam(defaultValue = "*no comments*") String comment,
            @RequestParam(defaultValue = "false") Boolean notice
    ) {
        Mood enumMood = Mood.valueOf(mood);
        Record record = new Record(
                weight, proteins, fats, carbohydrates,
                diaryService.getProgramDay(user),
                null, comment,
                enumMood, user
        );

        try {
            String proceedFile = fileService.loadFile(file);
            if (proceedFile != null) {
                record.setPhoto(proceedFile);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        boolean recordAdded = diaryService.add(record);
        if (recordAdded) {
            user.updateDay();
        }


        if (notice) {
            user.setRecordActive(record);
        }
        // else: throws errors
        return "redirect:/diary";
    }
}
