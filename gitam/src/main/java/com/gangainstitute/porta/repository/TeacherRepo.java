package com.gangainstitute.porta.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.teacher.Teachers;

public interface TeacherRepo extends JpaRepository<Teachers, Integer> {
	public Teachers findTeacherByeID(String eID);

}
