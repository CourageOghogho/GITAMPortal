package com.gangainstitute.porta.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.Books;

public interface BooksRepo extends JpaRepository<Books, Integer> {

}
