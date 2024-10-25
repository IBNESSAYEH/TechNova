package com.technova.V1.controllers;

import com.technova.V1.models.User;
import com.technova.V1.services.UserService;
import com.technova.V1.services.UserServiceImp;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/")
public class UserController {
    private final UserService userService;
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String listUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "userList";
    }

    @GetMapping("/user-new")
    public String newUserForm(Model model) {
        model.addAttribute("user", new User());
        return "userForm";
    }

    @PostMapping
    public String saveUser(@ModelAttribute User user) {
        userService.saveUser(user);
        return "redirect:/";
    }

    @GetMapping("/{id}/user-edit")
    public String editUserForm(@PathVariable("id") Long id, Model model) {
        userService.getUserById(id).ifPresent(user -> model.addAttribute("user", user));
        return "userEditForm";
    }
    @PostMapping("/user-edit")
    public String updateUser(@ModelAttribute User user) {
        userService.saveUser(user);
        return "redirect:/";
    }

    @GetMapping("/{id}/user-delete")
    public String deleteUser(@PathVariable("id") Long id) {
        userService.deleteUser(id);
        return "redirect:/";
    }


}
