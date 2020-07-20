package com.gangainstitute.porta.repository;

import org.springframework.data.repository.CrudRepository;

import com.gangainstitute.porta.model.Classes;
public interface ClassRepo extends CrudRepository<Classes, Integer>{
	public Classes findBySubjectCode(String subjectCode);

}
