package com.sda.kosmetykiLol.kosmoSklep.Controllers;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Configuration
@Controller
@EnableAutoConfiguration
@ComponentScan
public class ViewController {

    @RequestMapping("/")
    public String index() {
        return "index.jsp";
    }


}

