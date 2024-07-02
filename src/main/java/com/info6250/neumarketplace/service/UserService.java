package com.info6250.neumarketplace.service;

import com.info6250.neumarketplace.model.User;
import com.info6250.neumarketplace.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HttpSession session;  // Autowiring the session
    
    private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();


    public User getCurrentUser() {
        return (User) session.getAttribute("currentUser"); // Correctly retrieve the User object from the session
    }

    public User registerUser(User user) {
    	
        try {
            // Logic to hash password and save user
            String encodedPassword = passwordEncoder.encode(user.getPassword());
            user.setPassword(encodedPassword);
            return userRepository.save(user);
        } catch (DataIntegrityViolationException e) {
            // Log exception and/or analyze it to provide a user-friendly message
        	throw new RuntimeException("Username or email already exists", e);
        }

    }

    public boolean checkLogin(String username, String password) {
    	  User user = userRepository.findByUsername(username);
    	  return user != null && passwordEncoder.matches(password, user.getPassword());
    }

    public User getUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    
    public boolean isUsernameAvailable(String username) {
        return userRepository.findByUsername(username) == null;
    }

    public boolean isEmailAvailable(String email) {
        return userRepository.findByEmail(email) == null; 
    }
}