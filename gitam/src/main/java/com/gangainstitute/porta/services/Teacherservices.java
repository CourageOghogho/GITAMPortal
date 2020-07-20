package com.gangainstitute.porta.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.gangainstitute.porta.model.Classes;
import com.gangainstitute.porta.model.teacher.Teachers;
import com.gangainstitute.porta.repository.ClassRepo;
import com.gangainstitute.porta.repository.TeacherRepo;

public class Teacherservices {
	private TeacherRepo teacherRepo;
	@Autowired
	private ClassRepo classRepo;
	
	public Teacherservices(TeacherRepo teacherRepo) {
		this.teacherRepo=teacherRepo;
	}
	
	public Teachers feltchTeacherByEID(String eid) {
		return teacherRepo.findTeacherByeID(eid);
	}
	
	public Classes saveClass(Classes classe) {
		return classRepo.save(classe);
	}
}
