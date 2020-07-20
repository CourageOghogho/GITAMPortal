package com.gangainstitute.porta.repository;

import org.springframework.data.repository.CrudRepository;

import com.gangainstitute.porta.model.student.StudentLogin;

public interface StudentLoginRepo extends CrudRepository<StudentLogin, String> {
	public StudentLogin findByEmailAndPassword(String email, String password);

}
