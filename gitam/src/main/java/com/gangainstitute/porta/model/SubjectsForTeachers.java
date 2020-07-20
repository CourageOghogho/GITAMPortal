package com.gangainstitute.porta.model;

public class SubjectsForTeachers {
	private String teacherEID;
	private String subjectCode;
	private String subjectName;
	private String className;
	private int classCapacity;
	private String proctorID;
	private String batch;
	
	
	
	public String getTeacherEID() {
		return teacherEID;
	}
	public void setTeacherEID(String teacherEID) {
		this.teacherEID = teacherEID;
	}
	public String getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public int getClassCapacity() {
		return classCapacity;
	}
	public void setClassCapacity(int classCapacity) {
		this.classCapacity = classCapacity;
	}
	public String getProctorID() {
		return proctorID;
	}
	public void setProctorID(String proctorID) {
		this.proctorID = proctorID;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	@Override
	public String toString() {
		return "SubjectsForTeachers [teacherEID=" + teacherEID + ", subjectCode=" + subjectCode + ", subjectName="
				+ subjectName + ", className=" + className + ", classCapacity=" + classCapacity + ", proctorID="
				+ proctorID + ", batch=" + batch + "]";
	}
	

}



