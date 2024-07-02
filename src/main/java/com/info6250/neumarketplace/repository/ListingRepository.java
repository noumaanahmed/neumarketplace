package com.info6250.neumarketplace.repository;

import com.info6250.neumarketplace.model.Listing;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ListingRepository extends JpaRepository<Listing, Long> {
	List<Listing> findAllByUserIdNot(Long userId);

}
