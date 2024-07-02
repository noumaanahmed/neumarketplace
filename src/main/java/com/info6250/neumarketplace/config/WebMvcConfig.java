package com.info6250.neumarketplace.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/**") // Apply to all paths
                .excludePathPatterns("/login", "/user/register", "/static/**"); // Exclude these paths

        // Add more exclusion patterns as needed for specific public paths
    }
}
