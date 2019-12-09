package com.anjali.oem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.anjali.oem.model.User;
import com.anjali.oem.service.SecurityService;
import com.anjali.oem.service.UserService;
import com.anjali.oem.validator.UserValidator;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout,@ModelAttribute("username")String name) {
    	
    	System.out.println(name);
    	
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");
        System.out.println("In login Fail !!!!!!!!!!");
        
    

        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully.");
            
            System.out.println("In login !!!!!!!!!!");
            //securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());
        }

        return "login";
    }

   
    
   
    @GetMapping({"/","/welcome"})
    public String welcome(@ModelAttribute("Username")String name,BindingResult result,ModelMap model) {
    	
    	System.out.println(name);
    	
    	User user = userService.findByUsername(name);
    	
        model.addAttribute("name", user.getUsername());
        
        return "welcome";
    }
    
    @GetMapping({"/hm"})
    public String home(Model model) {
     
        return "hm";
    }

}