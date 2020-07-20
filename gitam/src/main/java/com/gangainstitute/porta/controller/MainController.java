package com.gangainstitute.porta.controller;

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

import com.gangainstitute.porta.model.User;
import com.gangainstitute.porta.model.student.StudentLogin;
import com.gangainstitute.porta.model.student.Students;
import com.gangainstitute.porta.model.teacher.TeacherLogin;
import com.gangainstitute.porta.model.teacher.Teachers;
import com.gangainstitute.porta.repository.StudentLoginRepo;
import com.gangainstitute.porta.repository.StudentsRepo;
import com.gangainstitute.porta.repository.TeacherLoginRepo;
import com.gangainstitute.porta.repository.TeacherRepo;
import com.gangainstitute.porta.repository.UserRepository;

@Controller
public class MainController {
	
	@Autowired 
	private UserRepository userRepository;
	
	@Autowired 
	private StudentLoginRepo studentLoginRepo;
	
	@Autowired
	private TeacherLoginRepo teacherLoginRepo;
	
	@Autowired 
	private StudentsRepo studentRepo;
	
	@Autowired
	private User user;
	
	@Autowired
	private TeacherRepo teacherRepo;
	
	
	@GetMapping("/")
	  public String home() {
		  return "home";
	  }
	
  @GetMapping("newReg")
  public String add() {
	  return "newUser";
  }
  
  @GetMapping("staffUserLogin")
  public String staffLoginGetRequest() {
	  return "staffLogin";
  }
  
  @GetMapping("adminLogin")
  public String adminLoginGetRequest() {
	  return "adminLogin";
  }

  @PostMapping("addUser") // Map ONLY POST Requests
  public ModelAndView addNewUser(@RequestParam("role") String role, @RequestParam("name") String name,
		  @RequestParam("dob") String dob, @RequestParam("password") String password,
		  @RequestParam("passConfirm") String passConfirm, @RequestParam("email") String email, HttpServletRequest req,HttpServletResponse res) {
	
	  // Parameter initialization for user object
	  user.setName(name); user.setEmail(email); user.setPassword(password); user.setPassConfirm(passConfirm);user.setRole(role);
	user.setDob(dob);	  
	ModelAndView mv =new ModelAndView( );
    HttpSession session = req.getSession();
	//User object generation in the system record
    if(user.getPassConfirm().equals(user.getPassword())) {
      	if(user.validateUser()) {	
      		//The user is registered and id given
    		user=userRepository.save(user);
        	
    		//The user is specialized depending on the role
    		switch(user.getRole()) {
    		case "Student":
    			Students student=user.initializeStudent();
    			session.setAttribute("student", student);
    			StudentLogin studentLogin=student.loginSetter(user);
    			studentLoginRepo.save(studentLogin);
    			mv.addObject("student", student);
            	mv.setViewName("studentUpdate"); 
    			break;
    		case "Teacher":
    			Teachers teacher=user.initializeTeacher();
    			session.setAttribute("teacher", teacher);
    			TeacherLogin teacherLogin=teacher.loginSetter(user);
    			teacherLoginRepo.save(teacherLogin);
    			mv.addObject("teacher", teacher);
            	mv.setViewName("teacherUpdate");
    			break;
    		case "Libralian":
    			break;
    		case "Account":
    			break;
    		default:
    			break;
    		
    		}
    	}
    		else 
        	mv.setViewName("newUser");    
        	}
      	else {
 
    		mv.setViewName("newUser");
      	}
   
    return mv;
  }

  
  
  
  
  //Email Login get request
  @GetMapping("emailLogin")
  public String requestEmail() {
	  return "emailLogin";
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  @GetMapping(path="/all")
  public @ResponseBody Iterable<User> getAllUsers() {
    // This returns a JSON or XML with the users
    return userRepository.findAll();
  }
}