package com.gangainstitute.porta.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Courses {
	@Id
	private String courseCode;
	private String courseName;	
	private String deptCode;
	private float fees;
	private int capacity;
	
	
	public float getFees() {
		return fees;
	}
	public void setFees(float fees) {
		this.fees = fees;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	@Override
	public String toString() {
		return "Courses [courseCode=" + courseCode + ", courseName=" + courseName + ", deptCode=" + deptCode + ", fees="
				+ fees + ", capacity=" + capacity + "]";
	}
	
	
	

}
