package com.gangainstitute.porta.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.Subjects;

public interface SubjectsRepo extends JpaRepository<Subjects, String> {
	public List<Subjects> findByTeacherEID(String teacherEID);

}
