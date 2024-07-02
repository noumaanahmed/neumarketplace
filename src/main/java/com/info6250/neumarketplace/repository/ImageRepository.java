package com.info6250.neumarketplace.repository;

import com.info6250.neumarketplace.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ImageRepository extends JpaRepository<Image, Long> {
    // Additional queries if necessary
}