package com.info6250.neumarketplace.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
// import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.info6250.neumarketplace.model.Listing;
import com.info6250.neumarketplace.service.ListingService;
import com.info6250.neumarketplace.service.PaginationResult;
import com.info6250.neumarketplace.service.UserService;
import com.info6250.neumarketplace.model.User;

@Controller
@RequestMapping("/")
public class AuthController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private ListingService listingService;

    @GetMapping("/")
    public String redirectToLogin() {
        return "redirect:/login";
    }
    
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public ModelAndView loginUser(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
    	 if (userService.checkLogin(username, password)) {
             User user = userService.getUserByUsername(username); // Get the User object after successful login check
             session.setAttribute("currentUser", user); // Store User object in session
             return new ModelAndView("redirect:/dashboard");
         } else {
             ModelAndView mav = new ModelAndView("login");
             mav.addObject("error", "Invalid username or password");
             return mav;
         }
     }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
        return "redirect:/login";
    }

    @GetMapping("/dashboard")
    public ModelAndView dashboard(@RequestParam(defaultValue = "0") int page, HttpSession session) {
        int pageSize = 5; // Set page size to 10
        ModelAndView mav = new ModelAndView("dashboard");
        User currentUser = (User) session.getAttribute("currentUser");
       
        if (currentUser != null) {
            mav.addObject("username", currentUser.getUsername());
            mav.addObject("fullName", currentUser.getFullName());
            PaginationResult<Listing> paginationResult = listingService.findPaginated(page, pageSize);
            mav.addObject("paginationResult", paginationResult);
        } else {

            mav.setViewName("redirect:/login");
        }
        return mav;
    }
}
