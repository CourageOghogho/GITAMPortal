package com.gangainstitute.porta.controller;
import  com.gangainstitute.porta.services.StudentServices;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gangainstitute.porta.model.TrackDetailsNoDue;
import com.gangainstitute.porta.model.student.StudentLogin;
import com.gangainstitute.porta.model.student.Students;
import com.gangainstitute.porta.repository.DueClearanceRepo;
import com.gangainstitute.porta.repository.StudentCollegeFeeRepo;
import com.gangainstitute.porta.repository.StudentLoginRepo;
import com.gangainstitute.porta.repository.StudentsRepo;
import com.gangainstitute.porta.services.StudentServices;

import net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional;

@Controller 
public class StudentsController {
	@Autowired
	StudentsRepo studentRepo;
	@Autowired
	Students student;
	
	@Autowired
	StudentLoginRepo loginSearch;
	@Autowired
	StudentLogin logedIn;
	StudentServices studentServices;
	@Autowired
	StudentCollegeFeeRepo studentCollegeFeeRepo;
	@Autowired
	DueClearanceRepo clearanceRepo;
	
	
	@GetMapping("studentForgotPassword")
	public String studentForgrtPass() {
		return "studentPassRecovery";
	}
	
	@GetMapping("updateStudent")
	public String updateRequest() {
		return "newUser";
	}
	
	@PostMapping("updateStudent")
	public ModelAndView update(@RequestParam("course") String course, @RequestParam("bloodGroup") String bloodGroup,
			@RequestParam("middlename") String mname, @RequestParam("lastname") String lname,@RequestParam("rollNo") String rollNo,
			@RequestParam("batch") String batch, @RequestParam("phoneNo") String phoneNo, @RequestParam("gender") String gender,
			@RequestParam("city") String city, @RequestParam("state") String state, @RequestParam("nationality") String nationality,
			@RequestParam("zip") String zipCode,@RequestParam("dept") String  dept,
			@RequestParam("PermanentAddress") String permanentAddress,@RequestParam("correspondentAddress") String correspondentAddress,
			HttpServletRequest req, HttpServletResponse res) {
		
		//create modelAndView object 
		ModelAndView mv=new ModelAndView();
		//get student object from the sesion object
		Students student=(Students)req.getSession().getAttribute("student");
		
		//adding details to student object
		student.setMname(mname); student.setLname(lname); student.setRollNo(rollNo);student.setBatch(batch); student.setPhoneNo(phoneNo);
		student.setGender(gender);student.setCity(city);student.setNationality(nationality);student.setZipCode(zipCode);
		student.setCourse(course); student.setState(state); student.setDept(dept);
		student.setPermanentAddress(permanentAddress);student.setCorrespondentAddress(correspondentAddress);student.setBloodGroup(bloodGroup);
		
		//save student details in the database
		student=studentRepo.save(student);
		mv.addObject("student",student);
		mv.setViewName("dashboardStudent");
		return mv;
		
	}
	
	@GetMapping("loginStudent")
	public String loginRequest() {
		return "studentLogin";
	}
	
	@PostMapping("loginStudent")
	public ModelAndView loginPostRequest(HttpServletRequest req, HttpServletResponse res) {
		String email= req.getParameter("email").trim();
		String password= req.getParameter("password");
		HttpSession session=req.getSession();
		boolean loginFlag=false;
		ModelAndView mv=new ModelAndView();
		StudentServices studentServices=new StudentServices(studentRepo);
		if(email.equals("")||password.equals("")){
			
		}
		else {
			if(studentServices.findByEmailAndPassword(email, password)!=null) {
				student=studentServices.findByEmail(email);
				mv.addObject("student",student);
				mv.setViewName("studentDashboard");
				loginFlag=true;
				session.setAttribute("loginFlag", loginFlag);
				return mv;
			}
		}
					
			mv.setViewName("studentLogin");
			return mv;		
			
		}
		
	@RequestMapping("studentDashboard")
	public String dashoardRequest(HttpServletRequest req) {
		//if((boolean)req.getSession().getAttribute("loginFlag")==true) {
			//return "StudentDashboard";
		//}
		return "dashboardStudent";
	} 
	
	
	//View  student details
	@GetMapping("viewStudentDetails")
	public String viewMyDetailsS() {
		return "myStudentDetails";
	}
	
	//get  student fee manager 
	@GetMapping("feeManagerStudent")
	public String myFeemanagerStudent() {
		return "myFeeManager";
	}
		
	//get  student Library manager 
	@GetMapping("libraryManagerStudent")
	public String myLibraryManagerStudent() {
		return "myLibraryManager";
	}
	
	//get   student Subjects Manager
		@GetMapping("subjectManagerStudent")
		public String viewMySubjectManagerS() {
			return "mySubjectManager";
		}
		
		//get  student Society manager 
		@GetMapping("societyStudent")
		public String mymySocietyManagerStudent() {
			return "mySocietyManager";
		}
			
		//get  student Email manager 
		@GetMapping("emailManagerStudent")
		public String myEmailManagerStudent() {
			return "myEmailManager";
		}
		
	//get request mapping and handler for fee status request from student
	@GetMapping("myFeeStatus")
	public ModelAndView myFeeStatusStudent(HttpServletRequest req) {
		HttpSession session=req.getSession();
		Students student=(Students)session.getAttribute("student");
		
		ModelAndView mv=new ModelAndView();
		StudentServices service=new StudentServices();
		mv.addObject("StudentCollegeFees", service.studentsFeesStatus( student, studentCollegeFeeRepo ));
		mv.setViewName("myFeeStatus");
		return  mv;
	}
	//return you to the bashboard
	@GetMapping("backtomydashboard")
	public String backtoMyDashboard() {
		return "dashboardStudent";
	}
	
	//request mapping and handler for student initiate my no due form request
	@GetMapping("initiateMyNoDue")
	public ModelAndView initiateNoDueStudent(HttpServletRequest req) {
		HttpSession session=req.getSession();
		Students student=(Students)session.getAttribute("student");
		
		ModelAndView mv=new ModelAndView();
		StudentServices service=new StudentServices();
			
			String operation="Initiating no due procedure by student Roll No..: "+student.getRollNo();
			if(service.initateNoDuStudent( student.getRollNo(),  clearanceRepo)) {
				
				mv.addObject("redirectedLink", "feeManagerStudent");
				mv.addObject("operation", operation);
				mv.setViewName("genericSuccess");
			}
			else {

				mv.addObject("redirectedLink", "feeManagerStudent");
				mv.addObject("operation", operation);
				mv.setViewName("genericFailed");
			}

		return  mv;
	}

	
	@GetMapping("trackMyNoDue")
	public ModelAndView trackNoDueTeacher(HttpServletRequest req) {
		Students student=(Students)req.getSession().getAttribute("student");
		ModelAndView mv=new ModelAndView();
		StudentServices service=new StudentServices();
		TrackDetailsNoDue nodue=service.trackNoDue(student.getRollNo(),clearanceRepo);
		
		if(nodue!=null) {
			mv.addObject("tracker", nodue);
		}
		else {
			mv.addObject("tracker",
					new TrackDetailsNoDue(student.getRollNo(), 20, " progress-bar progress-bar-danger", "Somthing Has Gone Wrong"));
		}
		mv.setViewName("myNoDue");
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	//Testing Area
	
	@RequestMapping("tryStudent")
	public String tryStudentReq() {
		return "studentLoopIn";
	}
	@RequestMapping("getInStudent")
	public String tryStudentPost(@RequestParam("rollNo")String rollNo, HttpServletRequest req) {
		req.getSession().setAttribute("student", studentRepo.findByRollNo(rollNo));

		return "dashboardStudent";
	}
	
	
		
	}

