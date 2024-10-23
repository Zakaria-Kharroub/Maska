package org.example.controller;

import org.example.domaine.User;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private UserService userService;

//    @GetMapping("/")
//    public String home() {
//        return "index";
//    }

    @GetMapping("/")
    public String home(Model model) {
        List<User> users = userService.findAllUsers();
        model.addAttribute("users", users);
        return "index";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/";
    }

    @PostMapping("/delete")
    public String delete(@ModelAttribute("id") Long id) {
        userService.deleteUser(id);
        return "redirect:/";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("user") User user) {
        userService.updateUser(user);
        return "redirect:/";
    }



}