
package com.gangainstitute.porta.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.student.Students;

public interface StudentsRepo extends JpaRepository<Students, Integer> {
	public Students findByEmail(String email);
	public List<Students> findByCourseAndBatch(String course,String batch);
	public Students findByRollNo(String rollNo);

}
