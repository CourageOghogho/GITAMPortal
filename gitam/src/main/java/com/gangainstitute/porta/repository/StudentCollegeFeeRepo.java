package com.gangainstitute.porta.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.student.StudentCollegeFee;

public interface StudentCollegeFeeRepo extends JpaRepository<StudentCollegeFee, Integer>{
	public StudentCollegeFee findByRollNo(String rollNo);
	public List<StudentCollegeFee> findStudentCollegeFeesByRollNo(String rollNo);


}
