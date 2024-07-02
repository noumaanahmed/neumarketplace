# NEU Marketplace: A Campus-Centric Exchange Platform for the Husky Community

## Project Description
“NEU Marketplace" is an exclusive online platform tailored for Northeastern University's community, providing a space where students, staff, and alumni can buy, sell, or exchange goods and services. From textbooks and electronics to tutoring and carpooling, this student-centric marketplace aims to make campus life more affordable, sustainable, and connected by facilitating easy and secure transactions right within the university's ecosystem.

## Problem Statement
Students often have limited budgets and may struggle to find affordable resources and services they need or dispose of items they no longer use. The lack of a dedicated platform for these exchanges means that opportunities for cost-saving and convenient transactions are missed. The primary challenge that "NEU Marketplace" aims to address is the difficulty college students face in buying, selling, or trading items, textbooks, and services efficiently within their campus community.

## Solution Description
The solution is to develop "NEU Marketplace," a web-based platform tailored for college students to facilitate the buying, selling, and trading of items and services within a campus. The application will be easy to use, secure, and specifically designed for student needs. Here's an outline of the user flow and features:

1. **User Sign-Up:**
   - Users can register as students, providing details like student ID for campus verification.
   
2. **Item Listings:**
   - Students can list items or services for sale or trade, including textbooks, electronics, tutoring, and more.
   
3. **Trade System:**
   - A barter option where students can propose and accept trades of items or services without monetary exchange.
   
4. **Secure Messaging:**
   - A messaging system that allows students to communicate within the app without sharing personal contact details.

## Use Cases

1. **User Registration and Profile Creation:**
   - **Users sign up and create a personal profile.**
   - Steps: A new user visits NEU Marketplace, fills out the registration form with their campus email, creates a password, and submits information about their major, interests, or items they're looking for or offering.

2. **Listing an Item for Sale or Trade:**
   - **Users list an item they wish to sell or trade.**
   - Steps: After logging in, the user navigates to the "Create Listing" page, enters details about the item (including photos, description, price, or trade preferences), and posts it to the marketplace.

3. **Browsing and Searching Listings:**
   - **Users browse or search for specific items they need.**
   - Steps: Users use the search bar or filters (category, price range, condition) on the marketplace to find listings that match their criteria.

4. **Initiating a Transaction:**
   - **Users express interest in an item by initiating a purchase or trade.**
   - Steps: Upon finding an item of interest, the user sends a message to the seller through the platform’s secure messaging feature to inquire more or to propose a transaction.

5. **Leaving Feedback:**
   - **Users leave feedback after a transaction.**
   - Steps: After completing a transaction, the buyer and seller rate each other and leave comments regarding their experience to build trust within the community.

6. **Managing Listings:**
   - **Users manage their active and past listings.**
   - Steps: Users can edit, delete, or mark items as sold in their profile’s listing management section.

7. **Secure Messaging:**
   - **Users communicate securely within the platform.**
   - Steps: Users can send and receive messages with other users through an in-built messaging system to discuss item details, negotiate prices, or coordinate meetups while keeping personal contact information private.

## Tools & Technologies

- **Spring Boot:** Provides a rapid development framework for NEU Marketplace, simplifying the configuration and deployment of our web application. It's the bedrock that lets us get the platform up and running quickly, with less boilerplate code.
- **MVC Architecture:** Structures NEU Marketplace into a coherent model (data), view (UI), and controller (logic) layers. This separation makes the code easier to maintain and scale, especially as new features for the campus community are rolled out.
- **Hibernate ORM:** Manages the relational data for NEU Marketplace, allowing us to define our marketplace items, user profiles, and transaction details as objects in our code. Hibernate simplifies the database interactions, so we can focus on the user experience rather than the nitty-gritty of SQL queries.
- **DAO Pattern:** By implementing the DAO pattern, NEU Marketplace will have a set of interfaces defining the operations allowed with the objects in the database. It's an additional layer of abstraction that makes our data layer robust and adaptable to changes in the database schema or the underlying technology.
- **Web 2.0 Application:** Ensures that NEU Marketplace is not just a static website but a dynamic platform where students can interact with each other, perform quick searches, and complete transactions without constant page reloads, providing a smooth and modern user experience.
- **Frontend UI:** The NEU Marketplace's frontend is crafted with HTML, CSS, JavaScript, and Bootstrap, combining to form a straightforward yet engaging user interface. This blend ensures the site is easy to navigate, visually appealing, and responsive across all devices, offering a seamless experience for users looking to buy, sell, or trade within the Northeastern community.

## How to run this project
This project does not have a .class file, so it's recommended to open this in Spring Tools Suite 4.

After opening, run the "NeumarketplaceApplication.java" file as a Sprint Boot App. 

Then, the project is viewable on localhost:5051/login

