package com.gangainstitute.porta.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.Courses;

public interface CoursesRepo extends JpaRepository<Courses, String> {

}
