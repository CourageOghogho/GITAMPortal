package com.gangainstitute.porta.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gangainstitute.porta.model.teacher.TeacherLogin;

public interface TeacherLoginRepo extends JpaRepository<TeacherLogin, String> {

}
