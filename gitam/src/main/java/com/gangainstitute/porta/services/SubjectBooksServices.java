package com.gangainstitute.porta.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gangainstitute.porta.model.Books;
import com.gangainstitute.porta.model.Classes;
import com.gangainstitute.porta.model.Subjects;
import com.gangainstitute.porta.model.SubjectsForTeachers;
import com.gangainstitute.porta.model.student.Students;
import com.gangainstitute.porta.repository.BooksRepo;
import com.gangainstitute.porta.repository.ClassRepo;
import com.gangainstitute.porta.repository.SubjectsRepo;

@Service
@Transactional
public class SubjectBooksServices {
	private SubjectsRepo subjectsRepo;
	@Autowired
	private ClassRepo classRepo;
	
	@Autowired
	private BooksRepo booksRepo;
	
	public SubjectBooksServices() {
		
	}
	public SubjectBooksServices(SubjectsRepo subjectsRepo) {
		this.subjectsRepo=subjectsRepo;
	}
	public SubjectBooksServices(BooksRepo booksRepo) {
		this.booksRepo=booksRepo;
	}
	
	public List<Subjects> feltSujectsByTeacherEID(String teacherEID){
		List<Subjects> subjects=new ArrayList<Subjects>();
		for(Subjects subject:subjectsRepo.findByTeacherEID(teacherEID)) {
			subjects.add(subject); 
		}

		return subjects;
		
	}
	public Classes feltchClassesBySubjectCode(String subjectCode){
		
		return classRepo.findBySubjectCode(subjectCode); 
		 
	}
	
	public List<SubjectsForTeachers> getSubjectsForTeacher(String teacherEID) {
		Classes classe;
		List<SubjectsForTeachers> subjectsForTeachers= new ArrayList<>();
		SubjectsForTeachers subjectsForTeacher =new SubjectsForTeachers(); 
		for(Subjects subject:feltSujectsByTeacherEID( teacherEID)) {
			classe=feltchClassesBySubjectCode(subject.getSubjectCode());
			subjectsForTeacher.setTeacherEID(teacherEID);
			subjectsForTeacher.setSubjectCode(subject.getSubjectCode());
			subjectsForTeacher.setSubjectName(subject.getSubjectName());
			subjectsForTeacher.setClassName(classe.getClassName());
			subjectsForTeacher.setClassCapacity(classe.getStudentCapacity());
			subjectsForTeacher.setProctorID(classe.getProctorEid());
			subjectsForTeacher.setBatch(classe.getBatch());
			subjectsForTeachers.add(subjectsForTeacher);
					
		}
		return subjectsForTeachers;
		
	} 
	
	//Books Management Services
	
	//add many books at once
public Books saveAllBooks(List<Books> books) {
	return (Books)booksRepo.saveAll(books);
	
}
//add a single book
public Books saveBook(Books book) {
	return booksRepo.save(book);
	
}
//add a subject to the repository
public Subjects saveSubject(Subjects subject) {
	return subjectsRepo.save(subject);
}

}
