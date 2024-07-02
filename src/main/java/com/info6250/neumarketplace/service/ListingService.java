package com.info6250.neumarketplace.service;

import com.info6250.neumarketplace.model.Image;
import com.info6250.neumarketplace.model.Listing;
import com.info6250.neumarketplace.model.User;
import com.info6250.neumarketplace.repository.ImageRepository;
import com.info6250.neumarketplace.repository.ListingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;


@Service
public class ListingService {

    @Autowired
    private ListingRepository listingRepository;

    @Autowired
    private ImageRepository imageRepository;
    
    @PersistenceContext
    private EntityManager entityManager;

    private final Path rootLocation = Paths.get("uploads/listings");

    public Listing createListing(Listing listing, MultipartFile image, User user) {
        if (!image.isEmpty()) {
            // Generate a unique file name
            String filename = StringUtils.cleanPath(UUID.randomUUID().toString() + "_" + image.getOriginalFilename());
            Path storagePath = this.rootLocation.resolve(filename);
            
            try {
                // Save the file to the filesystem
                Files.copy(image.getInputStream(), storagePath);
                
                // Set the URL to the filename
                listing.setImageUrl(filename);
            } catch (IOException e) {
                throw new RuntimeException("Failed to store image file.", e);
            }
        }
        
        // Set the user to the listing
        listing.setUser(user);
        
        // Save the listing after setting the imageUrl
        return listingRepository.save(listing);
    }
    
    
    public Listing findById(Long id) {
       

        return listingRepository.findById(id).orElse(null); // returns a listing or null if not found
    }
    
    
    private String saveUploadedImage(Listing listing, MultipartFile file) throws IOException {
        String filename = UUID.randomUUID().toString() + "_" + file.getOriginalFilename();
        Files.copy(file.getInputStream(), this.rootLocation.resolve(filename));

        Image uploadedImage = new Image();
        uploadedImage.setFilename(filename);
        uploadedImage.setContentType(file.getContentType());
        uploadedImage.setData(file.getBytes());
        uploadedImage.setListing(listing);
        imageRepository.save(uploadedImage);

        return filename;
    }

    
    
    
    public List<Listing> findAll() {
        return listingRepository.findAll();
    }
    


    public PaginationResult<Listing> findPaginated(int pageNo, int pageSize) {
        String qlString = "SELECT l FROM Listing l";
        TypedQuery<Listing> query = entityManager.createQuery(qlString, Listing.class);
        query.setFirstResult(pageNo * pageSize);
        query.setMaxResults(pageSize);

        long totalItems = entityManager.createQuery("SELECT COUNT(l.id) FROM Listing l", Long.class).getSingleResult();
        int totalPages = (int) Math.ceil((double) totalItems / pageSize);

        List<Listing> listings = query.getResultList();
        return new PaginationResult<>(listings, pageNo, totalItems, totalPages);
    }
}
