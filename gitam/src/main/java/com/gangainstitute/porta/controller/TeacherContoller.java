package com.gangainstitute.porta.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gangainstitute.porta.model.Classes;
import com.gangainstitute.porta.model.DepartmentalLevee;
import com.gangainstitute.porta.model.Subjects;
import com.gangainstitute.porta.model.SubjectsForTeachers;
import com.gangainstitute.porta.model.TrackDetailsNoDue;
import com.gangainstitute.porta.model.student.DeptFine;
import com.gangainstitute.porta.model.student.StudentCollegeFee;
import com.gangainstitute.porta.model.student.Students;
import com.gangainstitute.porta.model.teacher.Teachers;
import com.gangainstitute.porta.repository.DepartmentalLeveeRepo;
import com.gangainstitute.porta.repository.DeptFineRepo;
import com.gangainstitute.porta.repository.DueClearanceRepo;
import com.gangainstitute.porta.repository.StudentCollegeFeeRepo;
import com.gangainstitute.porta.repository.StudentsRepo;
import com.gangainstitute.porta.repository.SubjectsRepo;
import com.gangainstitute.porta.repository.TeacherRepo;
import com.gangainstitute.porta.services.StudentServices;
import com.gangainstitute.porta.services.SubjectBooksServices;
import com.gangainstitute.porta.services.Teacherservices;

@Controller
public class TeacherContoller {
	
	@Autowired
	TeacherRepo teacherRepo;
	@Autowired
	Teachers teacher;
	@Autowired
	Classes classe;
	
	@Autowired
	DeptFineRepo deptFineRepo;
	
	@Autowired
	StudentsRepo studentRepo;
	@Autowired
	Subjects subject;
	@Autowired
	SubjectsRepo subjectsRepo;
	@Autowired
	DepartmentalLevee departmentalLevee;
	@Autowired
	DepartmentalLeveeRepo departmentalLeveeRepo;
	@Autowired
	StudentCollegeFeeRepo studentCollegeFeeRepo;
	@Autowired
	DueClearanceRepo clearanceRepo;
	
	StudentServices studentService;
	SubjectBooksServices subjectBooksServices;
	@GetMapping("updateTeacher")
	public String updateRequest() {
		return "studentUpdate";
	}
	
	@PostMapping("updateTeacher")
	public ModelAndView update(@RequestParam("designation") String designition, @RequestParam("bloodGroup") String bloodGroup,
			@RequestParam("mname") String mname, @RequestParam("lname") String lname,@RequestParam("eid") String eid,
			@RequestParam("dept") String dept, @RequestParam("phoneNo") String phoneNo, @RequestParam("gender") String gender,
			@RequestParam("city") String city, @RequestParam("state") String state, @RequestParam("nationality") String nationality,
			@RequestParam("zipCode") String zipCode, @RequestParam("joinYear") String joinYear,@RequestParam("experience") String experience,
			@RequestParam("qualification") String qualification, @RequestParam("mostFavouriteSubject") String mostFavouriteSubject,
			@RequestParam("favouriteSubject") String favouriteSubject,@RequestParam("permanentAddress") String permanentAddress,
			@RequestParam("temporaryAddress") String correspondentAddress,
			HttpServletRequest req, HttpServletResponse res) {
		//get the teacher object in the session object
		Teachers teacher=(Teachers)req.getSession().getAttribute("teacher");
		
		//add teacher details in the teacher object
		teacher.setDesignition(designition);teacher.setBloodGroup(bloodGroup);teacher.setMname(mname);teacher.setLname(lname);
		teacher.seteID(eid);teacher.setDepartment(dept);teacher.setPhoneNo(phoneNo);teacher.setGender(gender);teacher.setCity(city);
		teacher.setState(state);teacher.setNationality(nationality);teacher.setZipCode(zipCode);teacher.setYearOfEmployment(joinYear);
		teacher.setExperience(experience);teacher.setQualification(qualification);teacher.setMostFavouriteSubject(mostFavouriteSubject);
		teacher.setFavouriteSubject(favouriteSubject);teacher.setPermanentAddress(permanentAddress);teacher.setCorrespondentAddress(correspondentAddress);
		
		//save the teacher object in the database
		teacher=teacherRepo.save(teacher);
		
		//create a modelAndView object and add teacher to it
		ModelAndView mv=new ModelAndView();
		mv.addObject("teacher", teacher);
		mv.setViewName("teacherDashboard");
		return mv;
	}
	
	//this method handles request for "fetchStudents" and retrun the list of students who
	//course and batch matches the request parameters
	@PostMapping("fetchStudents")
	public ModelAndView feltStudentsForRegapproval(@RequestParam("course") String course,
			@RequestParam("batch") String batch) {
		ModelAndView mv=new ModelAndView();
		studentService=new StudentServices(studentRepo);
		mv.addObject("students",studentService.feltStudentsByCourseAndBatch(course, batch) );
		mv.setViewName("regApprove");
		return mv;
	}
	
	//controller methods for student Approval management for teacher. Handles get request
	//and redirect to the registration manager page
	@GetMapping("regManager")
	public String studentRegmanager() {
		return "regApprove";
	}

	//handles a get request to approve a student registration
	@RequestMapping("approveStudent")
	public String approve( int sid) {
		 studentService =new StudentServices(studentRepo);
		 studentService.approveStudent(sid);
		return "regApprove";
	}
	//handles a get request to reject or block a student registration request
	@RequestMapping("blockStudent")
	public String block( int sid) {
		 studentService =new StudentServices(studentRepo);
		 studentService.blockStudent(sid);
		return "regApprove";
	}
	
	
	
	
	//get request controllers for subject assignment to teacher management
	@GetMapping("teacherSubjectManager")
	public ModelAndView subjectManagement(String teacherEID) {
		ModelAndView mv=new ModelAndView();
		subjectBooksServices=new SubjectBooksServices(subjectsRepo);
		List<SubjectsForTeachers> subjectsForTeachers=subjectBooksServices.getSubjectsForTeacher(teacherEID);
		mv.addObject("subjectsForTeachers", subjectsForTeachers);
		mv.setViewName("subjectManagerTeacher");
		return mv;
	}
	
	
	//get request handler for Assignment manager for Teacher
	@GetMapping("assignmentT") 
	public String assignmentManagerforTeacher() {	
		return "assignmentManagerTeacher";
	}
	
	
	//get request handler for Assignment manager for Teacher
		@GetMapping("feeManagerT") 
		public String feeManagerforTeacher() {	
			return "feeManagerTeacher";
		}
	 
		//get request handler for Assignment manager for Teacher
		@GetMapping("specialDuty") 
			public String dutyManagerforTeacher() {	
			return "otherDutyTeacher";
		}
		 
		//get request handler for Assignment manager for Teacher
		@PostMapping("findStudentFee") 
		public ModelAndView findAStudentFeeStructure(@RequestParam("rollNo")String rollNo) {
			StudentServices studentServices=new StudentServices(studentCollegeFeeRepo, studentRepo);
			ModelAndView mv=new ModelAndView();
			mv.addObject("StudentCollegeFees", studentServices.studentCollegeFeeByRollNo(rollNo));
			mv.setViewName("feeManagerTeacherRes"); 
			return mv;
		}
		
		@PostMapping("findStudentFeeAll")
		public ModelAndView findStudentFeeForAll(@RequestParam("course") String course,@RequestParam("batch") String batch) {
			ModelAndView mv=new ModelAndView();
			StudentServices studentService=new StudentServices( studentCollegeFeeRepo,  studentRepo);
			
			mv.addObject("StudentCollegeFees", studentService.allStudentsFees(course, batch));
			mv.setViewName("feeManagerTeacherRes");
			return mv;
		}
			
		
		
		@PostMapping("viewDepartmentalFees")
		public ModelAndView viewDeptFees(@RequestParam("course")String course) {
			ModelAndView mv=new ModelAndView();
			StudentServices studentService=new StudentServices(departmentalLeveeRepo);
			
			mv.addObject("courseLevee", studentService.viewDepartmentalLevee(course));
			mv.setViewName("courseLevee");
			return mv;
		}
		
		 
		//to view the students fine details 
		@PostMapping("vewDeptFine")
		public ModelAndView viewfineForStudent(@RequestParam("rollNo")String rollNo) {
			ModelAndView mv=new ModelAndView();
			StudentServices studentService=new StudentServices(deptFineRepo);
			mv.addObject("deptFines", studentService.fetchStudentFine(rollNo));
			mv.setViewName("deptFine");
			return mv;
		}
		
		@PostMapping("vewDeptFines")
		public ModelAndView viewfineForStudent(@RequestParam("course")String course,@RequestParam("course")String batch) {
			ModelAndView mv=new ModelAndView();
			StudentServices studentService=new StudentServices();
			mv.addObject("deptFines", studentService.fetchStudentFine(course,batch,deptFineRepo,studentRepo));
			mv.setViewName("deptFine");
			return mv;
		}
		
				
	//fine a student
		@PostMapping("fineStudent")
		public ModelAndView fineStudent(@RequestParam("rollNo") String rollNo,@RequestParam("amount") float amount,
				@RequestParam("reason") String reason) {
			//setting parameters
			DeptFine fine=new DeptFine();
			fine.setAmount(amount); fine.setRollNo(rollNo); fine.setRemark(reason);
			ModelAndView mv=new ModelAndView();
			StudentServices studentService=new StudentServices();
			studentService.fineStudent(fine, deptFineRepo);
			String operation="Imposing Fine on a Student with RollNo. "+rollNo+"!";
			mv.addObject("redirectedLink", "fineStudent");
			mv.addObject("operation", operation);
			mv.setViewName("genericSuccess");
			 
			return mv;
		}
	@GetMapping("fineStudent")
	public String fineAStudent() {
		return "deptFine";
	}
	
	//remove fine
	@PostMapping("removefine")
	public ModelAndView removeFine(@RequestParam("fineCode")int fineCode ) {
		ModelAndView mv=new ModelAndView();
		StudentServices studentService=new StudentServices();
		String operation;
		
		DeptFine fine=studentService.fetchFineAndDelete(fineCode,deptFineRepo );
		if(fine!=null) {
			operation="Reoving Fine on a Student with Fine Code: "+fineCode+" ";
			mv.addObject("redirectedLink", "fineStudent");
			mv.addObject("operation", operation);
			mv.setViewName("genericSuccess");
		}
		else {
			operation="Reoving Fine on a Student with Fine Code: "+fineCode+" ";
			mv.addObject("redirectedLink", "fineStudent");
			mv.addObject("operation", operation);
			mv.setViewName("genericFailed");
			
		}
		return mv;
	}
	
	@GetMapping("dueManagers")
	public String dueManagement() {
		return "duemanagement";
		
	}
	@PostMapping("approveNoDueT")
	public ModelAndView dueApprovalProctor(@RequestParam("rollNo")String rollNo) {
		ModelAndView mv=new ModelAndView();
		StudentServices studentService=new StudentServices();
		String operation="Approving NO DUE APPLICATION of student with Roll No.: "+rollNo;
		if(studentService.approveNoDueProctor(rollNo,  clearanceRepo)) {
			
			mv.addObject("redirectedLink", "duemanagement");
			mv.addObject("operation", operation);
			mv.setViewName("genericSuccess");
		}
		else {

			mv.addObject("redirectedLink", "duemanagement");
			mv.addObject("operation", operation);
			mv.setViewName("genericFailed");
		}
		return mv;
	}
	
	//track student NoDue for teacher
	@PostMapping("trackNoDueT")
	public ModelAndView trackNoDueTeacher(@RequestParam("rollNo")String rollNo) {
		ModelAndView mv=new ModelAndView();
		StudentServices service=new StudentServices();
		TrackDetailsNoDue nodue=service.trackNoDue(rollNo,clearanceRepo);
		
		if(nodue!=null) {
			mv.addObject("tracker", nodue);
		}
		else {
			mv.addObject("tracker",
					new TrackDetailsNoDue(rollNo, 20, " progress-bar-striped active", "Student Request"));
		}
		mv.setViewName("noDueStatus");
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//HOD Section: This area handles all request from HOD role
	
	//class management
	@PostMapping("addClasses")
	public ModelAndView addClass(@RequestParam("className") String className ,
			@RequestParam("capacipy") int capacipy,	@RequestParam("batch") String batch,
			@RequestParam("program") String program) {
		
		ModelAndView mv=new ModelAndView();
		//initialize the class object
		classe.setClassName(className); classe.setBatch(batch);classe.setProgram(program);
		classe.setStudentCapacity(capacipy);
		mv.addObject("classe", classe);
		mv.setViewName("classUpdate");
		return mv;
	}
	
	// adding classes to records
	@PostMapping("updateClass")
	public ModelAndView updateClass(@RequestParam("CRRollNO") String CRRollNO ,
			@RequestParam("proctorEID" ) String proctorEID, Classes classe) {
		
		ModelAndView mv=new ModelAndView();
		//get teacher and student  object
		studentService=new StudentServices(studentRepo);
		Students student=studentService.feltchStudentByRollNo(CRRollNO);
		Teacherservices Teacherservices=new Teacherservices(teacherRepo);
		teacher=Teacherservices.feltchTeacherByEID(proctorEID);
		
		//update classe object
		classe.setCourseRepRollNO(CRRollNO);
		classe.setProctorEid(proctorEID);
		
		//save the classe object
		classe=Teacherservices.saveClass(classe);
		mv.addObject("classe", classe);
		mv.setViewName("");
		return mv;
		
	}
	
	
	//subject management: creating new subject
	@PostMapping("addNewSubject")
	public String addNewSubject(@RequestParam("subjectCode") String subjectCode, 
			@RequestParam("subjectName") String subjectName,@RequestParam("creditUit") int creditUit ,
			@RequestParam("totalMarks") int totalMarks ,	@RequestParam("teacherEID") String teacherEID) {
		
		subject.setSubjectCode(subjectCode);subject.setSubjectName(subjectName);subject.setCreditUit(creditUit);
		subject.setTotalMarks(totalMarks);subject.setTeacherEID(teacherEID);
		 subjectBooksServices=new SubjectBooksServices(subjectsRepo);
		 subjectBooksServices.saveSubject(subject);
		return "bookRecommendation";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//testing methods
	@PostMapping("getInTeacher")
	public String inTeacher(int teacherID, HttpServletRequest req) {
		//ModelAndView mv=new ModelAndView();
		HttpSession session=req.getSession();
		teacher=teacherRepo.findById(teacherID).orElse(null);
		session.setAttribute("teacher", teacher);
		//mv.addObject("teacher",teacher );
		//mv.setViewName("teacherDashboard");
		return "teacherDashboard";
		
	}
	@GetMapping("tryTeacher") 
	public String tryTeach() {
		return "tryTeacher";
	}
	
	
	@GetMapping("subjectManagerTeacher")
	public String tryTeachSubject() {
		return "subjectManagerTeacher"; 
	}
	

}
