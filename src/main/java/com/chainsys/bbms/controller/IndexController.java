package com.chainsys.bbms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class IndexController 
{
   
    @GetMapping("/adminuse")
    public String adminAccess(Model model)
    {
    	return "adminaccess"; 	
    }
    @GetMapping("/loginuse")
    public String homePage(Model model)
    {
    	return "homepage"; 	
    }
    @GetMapping("/contactus")
    public String contactUs(Model model)
    {
    	return "contact";
    }
    @GetMapping("/logout")
    public String logout(Model model)
    {
    	return "logoutdemo";
    }
    
    
}
