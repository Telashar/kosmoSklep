package com.sda.kosmetykiLol.kosmoSklep.Controllers;

import com.sda.kosmetykiLol.kosmoSklep.Entities.Users.User;
import com.sda.kosmetykiLol.kosmoSklep.Repositories.UserRepository;
import com.sda.kosmetykiLol.kosmoSklep.Services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

        return "user/list";
    }


}
