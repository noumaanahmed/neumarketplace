package com.info6250.neumarketplace.controller;

import com.info6250.neumarketplace.model.Listing;
import com.info6250.neumarketplace.model.User;
import com.info6250.neumarketplace.service.ListingService;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/listings")
public class ListingController {

    @Autowired
    private ListingService listingService;
    

    @GetMapping("/create")
    public String showCreateForm(Model model) {
        model.addAttribute("listing", new Listing());
        return "create-listing";
    }

    @PostMapping("/create")
    public String createListing(@ModelAttribute Listing listing,
            @RequestParam("image") MultipartFile image,
            HttpSession session,
            RedirectAttributes redirectAttributes) {
User currentUser = (User) session.getAttribute("currentUser");
if (currentUser == null) {
// Handle not logged in user
return "redirect:/login";
}    
        try {
        	
        
            listingService.createListing(listing, image, currentUser);
            session.setAttribute("successMessage", "Listing created successfully!");
            return "redirect:/listings/create";
        } catch (Exception e) {
            session.setAttribute("errorMessage", "Failed to create listing due to an error.");
        }
        
        return "redirect:/listings/create";
    }

    @GetMapping
    public ModelAndView getAllListings() {
        List<Listing> listings = listingService.findAll();
        ModelAndView modelAndView = new ModelAndView("listings-dashboard");
        modelAndView.addObject("listings", listings);
        return modelAndView;
    }
    
    @GetMapping("/success")
    public String showSuccessPage() {
        return "listingsuccess";
    }

    @GetMapping("/{id}")
    public ModelAndView showListingDetails(@PathVariable Long id) {
        Listing listing = listingService.findById(id);
        if (listing == null) {
            // Handle the case where the listing is not found
            return new ModelAndView("redirect:/dashboard");
        }
        ModelAndView mav = new ModelAndView("item-listing");
        mav.addObject("listing", listing);
        return mav;
    }



}
