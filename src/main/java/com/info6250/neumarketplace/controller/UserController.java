package com.info6250.neumarketplace.controller;

import com.info6250.neumarketplace.model.User;
import com.info6250.neumarketplace.service.UserService;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.validation.BindingResult;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView("register");
        modelAndView.addObject("user", new User());
        return modelAndView;
    }

    @PostMapping("/register")
    public ModelAndView registerUser(@Valid @ModelAttribute User user,BindingResult result, HttpSession session) {
    	 if (result.hasErrors()) {
    	        ModelAndView mav = new ModelAndView("register");
    	        mav.addObject("user", user);
    	        return mav;
    	    }
    	userService.registerUser(user);
        session.setAttribute("username", user.getUsername());
        return new ModelAndView("redirect:/dashboard");
    }
    
    @GetMapping("/checkUsername")
    @ResponseBody
    public boolean checkUsername(@RequestParam String username) {
        return userService.isUsernameAvailable(username);
    }
    
    @GetMapping("/checkEmail")
    @ResponseBody
    public boolean checkEmail(@RequestParam String email) {
        return userService.isEmailAvailable(email);
    }
}
