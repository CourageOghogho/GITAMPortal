package com.gangainstitute.porta.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gangainstitute.porta.model.teacher.Teachers;

@Component
@Entity
public class Subjects {
	@Id
	private String subjectCode;
	private String subjectName;
	private int creditUit;
	private int totalMarks;
	
	//@ManyToMany
	private int  recBookID;
	@Column(unique = true)
	private String teacherEID;

	
	
	
	
	
	
	public int getRecBookID() {
		return recBookID;
	}
	public void setRecBookID(int recBookID) {
		this.recBookID = recBookID;
	}
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
	public int getCreditUit() {
		return creditUit;
	}
	public void setCreditUit(int creditUit) {
		this.creditUit = creditUit;
	}
	public int getTotalMarks() {
		return totalMarks;
	}
	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}
	@Override
	public String toString() {
		return "Subjects [subjectCode=" + subjectCode + ", subjectName=" + subjectName + ", creditUit=" + creditUit
				+ ", totalMarks=" + totalMarks + ", recBookID=" + recBookID + ", teacherEID=" + teacherEID + "]";
	}
	
	
	

}
