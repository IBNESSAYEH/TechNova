package com.technova.V1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView getHomePage() {
        ModelAndView mav = new ModelAndView("index");
        mav.setViewName("index");
        return mav;
    }



}

