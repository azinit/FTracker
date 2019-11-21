package ru.itis.ftracker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itis.ftracker.entity.Role;
import ru.itis.ftracker.entity.User;
import ru.itis.ftracker.repository.UserRepository;
import ru.itis.ftracker.service.UserService;

import java.util.Collections;

@Controller
@RequestMapping("/signup")
public class SignupController {
    @Autowired
    private UserService userService;

    @GetMapping
    public String main() {
        return "auth/signup";
    }

    @PostMapping
    public String addUser(
            @RequestParam String firstName,
            @RequestParam String lastName,
            User user,
            Model model
    ) {
        user.setFirstName(firstName);
        user.setLastName(lastName);
        boolean userAdded = userService.addUser(user);
        if (!userAdded) {
            model.addAttribute("error", "User exists!");
            return "auth/signup";
        }
        return "redirect:/login";
        /*
        User userFromDB = userRepository.findByUsername(user.getUsername());

        boolean userIsAlreadyExist = userFromDB != null;
        if (userIsAlreadyExist) {
            model.addAttribute("error", "User exists!");
            return "signup";
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepository.save(user);
        return "redirect:/login";*/
    }
}
