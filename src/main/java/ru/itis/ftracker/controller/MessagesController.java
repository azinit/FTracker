package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itis.ftracker.entity.Message;
import ru.itis.ftracker.repository.MessageRepository;

@Controller
@RequestMapping("messages")
public class MessagesController {
    @Autowired
    private MessageRepository messageRepository;

    @GetMapping
    public String messages(Model model) {
        messageRepository.save(new Message("tEXt", "TAG"));
        Iterable<Message> messages = messageRepository.findAll();
        model.addAttribute("messages", messages);
        return "messages/messages";
    }

    @PostMapping
    public String addMessage(
            @RequestParam String text,
            @RequestParam String tag
    ) {
        Message message = new Message(text, tag);
        messageRepository.save(message);

        return "redirect:/messages";
    }
}
