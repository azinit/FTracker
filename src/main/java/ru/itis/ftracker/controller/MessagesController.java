package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ru.itis.ftracker.entity.Message;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.repository.MessageRepository;
import ru.itis.ftracker.repository.UserRepository;
import ru.itis.ftracker.service.UserService;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

@Controller
@RequestMapping("hub")
public class MessagesController {
    @Autowired
    private UserService userService;

    @Autowired
    private MessageRepository messageRepository;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping
    public String messages(Model model) {
        Iterable<Message> messages = messageRepository.findAllByOrderByIdDesc();
        List<User> users = userService.findAll();
        model.addAttribute("messages", messages);
        model.addAttribute("users", users);
        return "messages/messages";
    }

    @PostMapping("/add")
    public String addMessage(
            @AuthenticationPrincipal User user,
            @RequestParam String text,
            @RequestParam String tag,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        Message message = new Message(text, tag, user);

        // add file if attached
        boolean isFileAttached = (file != null) && (!Objects.requireNonNull(file.getOriginalFilename()).isEmpty());
        if (isFileAttached) {
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));
            message.setFilename(resultFilename);
        }

        messageRepository.save(message);
        return "redirect:/hub";
    }
}
