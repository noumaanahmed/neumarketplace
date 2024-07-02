package com.info6250.neumarketplace.service;

import java.util.List;

public class PaginationResult<T> {
    private List<T> results; // A generic list of results
    private int currentPage;
    private long totalItems;
    private int totalPages;

    public PaginationResult(List<T> results, int currentPage, long totalItems, int totalPages) {
        this.results = results;
        this.currentPage = currentPage;
        this.totalItems = totalItems;
        this.totalPages = totalPages;
    }

    // Getters and setters
    public List<T> getResults() {
        return results;
    }

    public void setResults(List<T> results) {
        this.results = results;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public long getTotalItems() {
        return totalItems;
    }

    public void setTotalItems(long totalItems) {
        this.totalItems = totalItems;
    }

    public int getTotalPages() {
        return totalPages;
    }

    public void setTotalPages(int totalPages) {
        this.totalPages = totalPages;
    }
}
