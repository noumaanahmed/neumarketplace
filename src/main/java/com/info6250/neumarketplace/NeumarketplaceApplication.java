//package com.info6250.neumarketplace;
//
//import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.SpringBootApplication;
//
//@SpringBootApplication
//public class NeumarketplaceApplication {
//
//    public static void main(String[] args) {
//        SpringApplication.run(NeumarketplaceApplication.class, args);
//    }
//
//}



// For external Standalone WAR deployment :

package com.info6250.neumarketplace;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class NeumarketplaceApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(NeumarketplaceApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(NeumarketplaceApplication.class, args);
    }
}

