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
    @GetMapping("/demoindex")
    public String getDemoIndex(Model model)
    {
    	return "demoindex";
    }
    
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
    @GetMapping("/webpage")
    public String webpageHome(Model model)
    {
    	return "demonavbar";
    }
    @GetMapping("/contactus")
    public String contactUs(Model model)
    {
    	return "contact";
    }
    @GetMapping("/adminlogindemo")
    public String demoAdminLogin(Model model)
    {
    	return "demo-admin-login";
    }
    @GetMapping("/slidedemo")
    public String box(Model model)
    {
    	return "slideshow";
    }
    
}
