package com.gangainstitute.porta.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gangainstitute.porta.model.Books;
import com.gangainstitute.porta.repository.BooksRepo;
import com.gangainstitute.porta.services.SubjectBooksServices;

@Controller
public class LibrarianController {
	@Autowired
	Books book;
	
	@Autowired
	private BooksRepo booksRepo;

	
	//librarian object creation area
	
	
	
	
	//Books management Area
	//adding books to the library
	@PostMapping("addBooks")
	public String libraryBookAdd(@RequestParam("title") String title, @RequestParam("authorName") String authorName,
			@RequestParam("subjectCode") String subjectCode ,@RequestParam("subjectArea") String subjectArea, @RequestParam("edition") String edition,
			@RequestParam("publisher") String publisher, @RequestParam("ISBN") long ISBN,
			@RequestParam("copies") int copies, HttpServletRequest req) {
		
		
		//initialize the book object
		book.setTitle(title);book.setAuthorName(authorName);book.setPublisher(publisher); book.setEdition(edition);
		book.setISBN(ISBN); book.setCopies(copies);book.setInStock(book.getCopies());
		
		//create service object
		SubjectBooksServices SubjectBooksServices=new SubjectBooksServices(booksRepo);
		if(SubjectBooksServices.saveBook(book)!=null) {
			req.setAttribute("BOOK_MANAGER", "BOOK_ADDED_SUCCESS");
		}
		else {
			req.setAttribute("BOOK_MANAGER", "BOOK_ADDED_FAILED");
		}
		
		return "bookManager";
		
	}

}
