package com.gangainstitute.porta.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@Entity 
public class Books {
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private int bootID;
	private String title;
	//@Autowired
	private String authorName;
	//@Autowired	
	//@ManyToMany(mappedBy="recBookID")
	private String subjectCode;
	private String subjectArea;
	  @Column(unique = true)
	private long ISBN;
	private String publisher;
	private String edition;
	private int copies;
	private int inStock;
	
	
	public int getBootID() {
		return bootID;
	}
	public void setBootID(int bootID) {
		this.bootID = bootID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubjectArea() {
		return subjectArea;
	}
	public void setSubjectArea(String subjectArea) {
		this.subjectArea = subjectArea;
	}
	public long getISBN() {
		return ISBN;
	}
	public void setISBN(long iSBN) {
		ISBN = iSBN;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getEdition() {
		return edition;
	}
	public void setEdition(String edition) {
		this.edition = edition;
	}
	public int getCopies() {
		return copies;
	}
	public void setCopies(int copies) {
		this.copies = copies;
	}
	public int getInStock() {
		return inStock;
	}
	public String getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}
	public void setInStock(int inStock) {
		this.inStock = inStock;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	@Override
	public String toString() {
		return "Books [bootID=" + bootID + ", title=" + title + ", authorName=" + authorName + ", subjectCode="
				+ subjectCode + ", subjectArea=" + subjectArea + ", ISBN=" + ISBN + ", publisher=" + publisher
				+ ", edition=" + edition + ", copies=" + copies + ", inStock=" + inStock + "]";
	}
	
	

	
	

}
