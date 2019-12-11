package com.anjali.oem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.anjali.oem.model.Request;
import com.anjali.oem.model.User;
import com.anjali.oem.service.SecurityService;
import com.anjali.oem.service.UserIssueService;
import com.anjali.oem.service.UserService;
import com.anjali.oem.validator.UserValidator;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    
    @Autowired
    private UserIssueService userIssueService;

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
    public String login(Model model, String error, String logout) {
    	
    	
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");
        
        if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully.");
            
            System.out.println("In login !!!!!!!!!!");
           
        }

        return "login";
    }
    
    /*@RequestMapping(method = RequestMethod.POST)
    public String submitForm(@ModelAttribute("request") Request request,
                            BindingResult result, SessionStatus status) 
    {
        
    	System.out.println("request call");
    	userIssueService.save(request);
    	
        return "redirect:/hm";
    }
    */
    
    @GetMapping({"/"})
    public String welcome() {
        return "redirect:/welcome";
    }
    
   
    @GetMapping({"/welcome"})
    public String welcome( Authentication authentication,ModelMap model) {
 
   
    	User user = userService.findByUsername(authentication.getName());
    	System.out.println("controller"+user.getUsername());
    	
    	//securityService.autoLogin(user.getUsername(), user.getPasswordConfirm());
    	
    	
        model.addAttribute("name", user.getUsername());
        model.addAttribute("contact", user.getContact());
        model.addAttribute("email", user.getEmail());
        
        
        return "welcome";
    }
    
    @GetMapping({"/hm"})
    public String home(Model model) {
     
        return "hm";
    }

}