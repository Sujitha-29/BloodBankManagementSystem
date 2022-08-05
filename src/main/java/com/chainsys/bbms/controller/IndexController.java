package com.chainsys.bbms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class IndexController 
{
    @GetMapping("/index")
    public String getIndex(Model model) {
        return "index";
    }
    @GetMapping("/admincontrol")
    public String AdminAccess(Model model)
    {
    	return "adminaccess"; 	
    }
}
