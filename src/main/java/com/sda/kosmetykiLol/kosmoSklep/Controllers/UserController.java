package com.sda.kosmetykiLol.kosmoSklep.Controllers;

import ch.qos.logback.core.status.Status;
import com.sda.kosmetykiLol.kosmoSklep.Entities.Products.Product;
import com.sda.kosmetykiLol.kosmoSklep.Entities.Users.User;
import com.sda.kosmetykiLol.kosmoSklep.Services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserController {

    private final UserService userService;

    @GetMapping("/create")
    public String addUser(Model model) {

        model.addAttribute("user", new User());

        return "user/create";
    }

    @PostMapping("/create")
    public String saveUser(@ModelAttribute("user") User user) {

        userService.addUser(user);

        return "redirect:list";
    }

//    @GetMapping("/index")
//    public String getMainPage() {
//
//        return "index";
//    }
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        userService.deleteById(id);

        return "redirect:/user/list";
    }

    @GetMapping("/edit/{id}")
    public String editUserForm(@PathVariable("id") Long id, Model model) {

        User user = userService.findUserByID(id).get();
        model.addAttribute("user",user);

        return "user/edit-form";

//        Optional<User> maybeUser = userService.getUserById(id);
//
//        if (!maybeUser.isPresent()) {
//            return "redirect:/user/create";
//        } else {
//            model.addAttribute("user", maybeUser.get());
//            return "user/edit-form";
//        }
    }

    @PostMapping("/edit/{id}")
    public String editUser(@ModelAttribute("user") User user) {
        userService.editUser(user);

        return "redirect:/user/list";
    }


    @GetMapping("/list")
    public String findAllUsers(Model model) {

        List<User> listUsers = userService.findAllUsers();
        model.addAttribute("users", listUsers);

        return "user/list";
    }



}
