package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.itis.ftracker.entity.Record;
import ru.itis.ftracker.service.DiaryService;
import ru.itis.ftracker.service.UserService;

import java.util.List;

// https://www.youtube.com/watch?v=pZamJ34AUr8&feature=youtu.be
// https://grokonez.com/java-integration/integrate-jquery-ajax-post-get-spring-boot-web-service#more-2552

@RestController
@RequestMapping("/api/diary")
public class RestDiaryController {
    @Autowired
    private UserService userService;
    @Autowired
    private DiaryService diaryService;

/*    @GetMapping("/all")
    public Response findAll() {
        HashMap<String, Object> model = new HashMap<>();
        model.put("message", "RPC-JSON");
        model.put("method", "Stats.Info");
        model.put("args", "USER,AGENT");
        return new Response("Done", model);
    }*/

    @GetMapping("/all")
    public List<Record> findAll() {
        return diaryService.getRecords(userService.getCurrentUser());
    }
}
