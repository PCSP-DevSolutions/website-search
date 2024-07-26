package com.pcsp.website_search;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {

    @RequestMapping("/")
    public String redirectToHomePage() {
        return "redirect:/index";
    }

    @RequestMapping("/index")
    public String home() {
        return "index.html";
    }


}
