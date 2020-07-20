package com.gangainstitute.porta.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gangainstitute.porta.model.student.Students;
import com.gangainstitute.porta.model.teacher.Teachers;
@Component
@Entity
public class Classes {
	@Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	private int classID;
	private String className;
	private String program;

	private String proctorEid;
	private String batch;

	private String courseRepRollNO;
	private String subjectCode;
	private int studentCapacity;
	
	

	public String getProctorEid() {
		return proctorEid;
	}
	public void setProctorEid(String proctorEid) {
		this.proctorEid = proctorEid;
	}
	public String getCourseRepRollNO() {
		return courseRepRollNO;
	}
	public void setCourseRepRollNO(String courseRepRollNO) {
		this.courseRepRollNO = courseRepRollNO;
	}
	public String getProgram() {
		return program;
	}
	public void setProgram(String program) {
		this.program = program;
	}
	public String getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}
	public String  getSubjects() {
		return subjectCode;
	}
	public void setSubjects(String  subjects) {
		this.subjectCode = subjects;
	}
	public int getClassID() {
		return classID;
	}
	public void setClassID(int classID) {
		this.classID = classID;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}

	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}

	public int getStudentCapacity() {
		return studentCapacity;
	}
	public void setStudentCapacity(int studentCapacity) {
		this.studentCapacity = studentCapacity;
	}
	@Override
	public String toString() {
		return "Classes [classID=" + classID + ", className=" + className + ", program=" + program + ", proctorEid="
				+ proctorEid + ", batch=" + batch + ", courseRepRollNO=" + courseRepRollNO + ", subjectCode="
				+ subjectCode + ", studentCapacity=" + studentCapacity + "]";
	}
	

	
	
	

}
