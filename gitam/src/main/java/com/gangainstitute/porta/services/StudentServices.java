package com.gangainstitute.porta.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.jvnet.hk2.annotations.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.gangainstitute.porta.model.DepartmentalLevee;
import com.gangainstitute.porta.model.TrackDetailsNoDue;
import com.gangainstitute.porta.model.student.DeptFine;
import com.gangainstitute.porta.model.student.DueClearance;
import com.gangainstitute.porta.model.student.StudentCollegeFee;
import com.gangainstitute.porta.model.student.StudentLogin;
import com.gangainstitute.porta.model.student.Students;
import com.gangainstitute.porta.model.student.StudentsFeeForView;
import com.gangainstitute.porta.repository.DepartmentalLeveeRepo;
import com.gangainstitute.porta.repository.DeptFineRepo;
import com.gangainstitute.porta.repository.DueClearanceRepo;
import com.gangainstitute.porta.repository.StudentCollegeFeeRepo;
import com.gangainstitute.porta.repository.StudentLoginRepo;
import com.gangainstitute.porta.repository.StudentsRepo;


@Service
@Transactional
public class StudentServices {
	@Autowired
	private StudentLoginRepo studentLoginRepo;
	
	@Autowired
	private Students student;
	private StudentsRepo studentRepo;
	private StudentCollegeFeeRepo studentCollegeFeeRepo;
	private DepartmentalLeveeRepo departmentalLeveeRepo;
	private DeptFineRepo deptFineRepo;
	
	
	
	//Default constructor
	public StudentServices() {
		
	}
	
	public StudentServices(StudentCollegeFeeRepo studentCollegeFeeRepo, StudentsRepo studentRepo) {
		this.studentCollegeFeeRepo=studentCollegeFeeRepo;
		this.studentRepo=studentRepo;
	}
	public StudentServices(DepartmentalLeveeRepo departmentalLeveeRepo) {
		this.departmentalLeveeRepo=departmentalLeveeRepo;
	}
	
	public StudentServices(DeptFineRepo deptFineRepo) {
		this.deptFineRepo=deptFineRepo;
	}
	public StudentServices(StudentsRepo studentRepo) {
		this.studentRepo=studentRepo;
	}
	
	
	public StudentLogin findByEmailAndPassword(String email, String password) {
		return studentLoginRepo.findByEmailAndPassword(email, password);
	}
	public Students findByEmail(String email) {
		return studentRepo.findByEmail(email);
	}
	public List<Students> feltStudentsByCourseAndBatch(String course,String batch) {
		List<Students> students=new ArrayList<Students>();
		for(Students student:studentRepo.findByCourseAndBatch(course,batch)) {  
			students.add(student);
		}
		return students;
	}
	
	public List<Students> showAllStudents() {  
		List<Students> students=new ArrayList<Students>();
		for(Students student:studentRepo.findAll()) {               
			students.add(student);

		}
		return students;
	}
	public int approveStudent(int sid) {
		student =studentRepo.findById(sid).orElse(null);
		if(student==null) {
			return 0;
		}
		else {
			student.setStatus("Active");
			studentRepo.save(student);
			return 1;
		}
	}
	
	public int blockStudent(int sid) {
		student =studentRepo.findById(sid).orElse(null);
		if(student==null) {
			return 0;
		}
		else {
			student.setStatus("Blocked");
			studentRepo.save(student);
			return 1;
		}
	}
	
	public Students feltchStudentByRollNo(String rollNo) {
		return studentRepo.findByRollNo(rollNo);
	}
	
	
	//request handler for a student fee structure
	public List<StudentsFeeForView> studentCollegeFeeByRollNo(String rollNo) {
		Students student= feltchStudentByRollNo( rollNo);
		StudentsFeeForView studentfee=new StudentsFeeForView();
		List<StudentsFeeForView>studentfees=new ArrayList<>();
		//List<StudentCollegeFee> fees=studentCollegeFeeRepo.findStudentCollegeFeesByRollNo(rollNo);
		for(StudentCollegeFee fee:studentCollegeFeeRepo.findStudentCollegeFeesByRollNo(rollNo)) {
			studentfee.setRollNo(rollNo);
			studentfee.setFullName(student.getFname()+" "+student.getLname());
			studentfee.setCourse(student.getCourse());
			studentfee.setBatch(student.getBatch());
			studentfee.setFee(fee.getFee());
			studentfee.setDiscount(fee.getDiscount());
			studentfee.setDeposited(fee.getDeposited());
			studentfee.setDue(fee.getFee()-fee.getDiscount()+fee.getFine());
			studentfees.add(studentfee);
			
		}
	
			return studentfees;
	}
	
	public List<StudentsFeeForView> allStudentsFees(String course, String batch){
		List<StudentsFeeForView> studentsFeeForViews=new ArrayList<>();
		StudentsFeeForView studentsFeeForView=new StudentsFeeForView();
		List<Students> students=studentRepo.findByCourseAndBatch(course, batch);
		System.out.println("printing student");
		System.out.println(students.toString());
		StudentCollegeFee fee;
		for(Students student: students) {
			fee=studentCollegeFeeRepo.findByRollNo(student.getRollNo());
			if(fee!=null) {
				System.out.println("printing fee");
				System.out.println(fee.toString());
				studentsFeeForView.setRollNo(student.getRollNo());
				studentsFeeForView.setFullName(student.getFname()+" "+student.getLname());
				studentsFeeForView.setCourse(student.getCourse());
				studentsFeeForView.setBatch(student.getBatch());
				studentsFeeForView.setFee(fee.getFee());
				studentsFeeForView.setDiscount(fee.getDiscount());
				studentsFeeForView.setDeposited(fee.getDeposited());
				studentsFeeForView.setFine(fee.getFine());
				studentsFeeForView.setDue(fee.getFee()+fee.getFine()-fee.getDeposited()-fee.getDiscount());
				studentsFeeForViews.add(studentsFeeForView);
			}
			
		}
		return studentsFeeForViews;
	}
	
	// this method returns the fee structure of a student
	//to be called by a student
	public StudentsFeeForView studentsFeesStatus(Students student,StudentCollegeFeeRepo studentCollegeFeeRepo ) {
		StudentsFeeForView studentsFeeForView=new StudentsFeeForView();
		StudentCollegeFee fee=studentCollegeFeeRepo.findByRollNo(student.getRollNo());
		studentsFeeForView.setRollNo(student.getRollNo());
		studentsFeeForView.setFullName(student.getFname()+" "+student.getLname());
		studentsFeeForView.setCourse(student.getCourse());
		studentsFeeForView.setBatch(student.getBatch());
		studentsFeeForView.setFee(fee.getFee());
		studentsFeeForView.setDiscount(fee.getDiscount());
		studentsFeeForView.setDeposited(fee.getDeposited());
		studentsFeeForView.setFine(fee.getFine());
		studentsFeeForView.setDue(fee.getFee()+fee.getFine()-fee.getDeposited()-fee.getDiscount());
		
		return studentsFeeForView;
	}
	
	
	
	
	
	public DepartmentalLevee viewDepartmentalLevee(String courseCode) {
		return departmentalLeveeRepo.findByCourseCode(courseCode);
		
	}
	
	public List<DeptFine> fetchStudentFine(String rollNo) {
		 List<DeptFine> deptfines=new ArrayList<>();
		 for(DeptFine deptfine: deptFineRepo.findByRollNo(rollNo)) {
			 if(deptfine!=null) {
				 deptfines.add(deptfine);
			 }
		 }
		 
		 return deptfines;
				
	}
	public List<DeptFine> fetchStudentFine(String course, String batch,DeptFineRepo deptFineRepo,StudentsRepo studentRepo) {
		
		List<DeptFine> deptfines=new ArrayList<>();
		for(Students student:studentRepo.findByCourseAndBatch(course, batch)) {
			if(student!=null) {
				for(DeptFine deptFine:deptFineRepo. findAllByRollNo(student.getRollNo())){
					deptfines.add(deptFine);
				} 
			}
		}
		return deptfines;
	}
	
	//fine a student (save operation)
	public DeptFine fineStudent(DeptFine fine,DeptFineRepo deptFineRepo ) {
		return deptFineRepo.save(fine);
	}
	public DeptFine fetchFineAndDelete(int fineCode,DeptFineRepo deptFineRepo ) {
		
		DeptFine fine=deptFineRepo.findByFineCode(fineCode);
		if(fine==null)
			return fine;
		deptFineRepo.delete(fine);
		deptFineRepo.flush(); 
		return fine;
	
	}
	//check if okay to initiate no due request (student)
		public boolean isOkayToInitateNoDue(String rollNo, DueClearanceRepo clearanceRepo) {
			DueClearance clearance=clearanceRepo.findByRollNo(rollNo);
			if(clearance==null) {
				return false;
			}
			if(clearance.getStudentRequestStatus()>0)
				return false;
			return true;
		}
	
	
	//check if approval state is ready for teacher (proctor)
	public boolean isReadyForProctor(String rollNo, DueClearanceRepo clearanceRepo) {
		DueClearance clearance=clearanceRepo.findByRollNo(rollNo);
		if(clearance!=null) {
			if(clearance.getStudentRequestStatus()>0&&clearance.getAccountStatus()>0&&clearance.getLibraryStatus()>0)
				return true;
		}
		return false;
	}
	//check if approval state is ready for Account
		public boolean isReadyForAccount(String rollNo, DueClearanceRepo clearanceRepo) {
			DueClearance clearance=clearanceRepo.findByRollNo(rollNo);
			if(clearance!=null) {
				if(clearance.getStudentRequestStatus()>0)
					return true;
			}
			return false;
		}
		
		//check if approval state is ready for libralian
				public boolean isReadyForLibrarian(String rollNo, DueClearanceRepo clearanceRepo) {
					DueClearance clearance=clearanceRepo.findByRollNo(rollNo);
					if(clearance!=null) {
						if(clearance.getStudentRequestStatus()>0&&clearance.getAccountStatus()>0)
							return true;
					}
					return false;
				}
				
				//check if approval state is ready for HOD
				public boolean isReadyForHOD(String rollNo, DueClearanceRepo clearanceRepo) {
					DueClearance clearance=clearanceRepo.findByRollNo(rollNo);
					if(clearance!=null) {
						if(clearance.getStudentRequestStatus()>0&&clearance.getAccountStatus()>0&&
								clearance.getLibraryStatus()>0&&clearance.getProctorStatus()>0)
							return true;
					}
					return false;
				}
				
				

	//approve no due for student
	public boolean approveNoDueProctor(String rollNo, DueClearanceRepo clearanceRepo) {
		if(isReadyForProctor( rollNo, clearanceRepo)) {
			DueClearance dueClearance	=clearanceRepo.findByRollNo(rollNo);
			if(dueClearance!=null) {
				if(dueClearance.getProctorStatus()<=0) {
					dueClearance.setProctorStatus(DueClearance.Approved);
					dueClearance.setProctorRemark("Successful");
					clearanceRepo.flush();
					return true;
				}
			}
			
		}
			
		return false;			
	}
	
	//approve no due for student
		public boolean initateNoDuStudent(String rollNo, DueClearanceRepo clearanceRepo) {
			if(isOkayToInitateNoDue( rollNo, clearanceRepo)) {
				DueClearance dueClearance=clearanceRepo.findByRollNo(rollNo);
				if(dueClearance!=null) {
					if(dueClearance.getStudentRequestStatus()<=0) {
						dueClearance.setStudentRequestStatus(DueClearance.Approved);
						clearanceRepo.flush();
						return true;
					}
				}
				
			}
				
			return false;			
		}
		
	//formulate bar behaviour
		public TrackDetailsNoDue trackNoDue(String rollNo,DueClearanceRepo clearanceRepo) {
			String barBehaviour="progress-bar progress-bar-danger";
			String status="No Such Student";
			int progressValue=100;
			DueClearance clearance=clearanceRepo.findByRollNo(rollNo);
			if(clearance!=null) {
				progressValue=clearance.getStudentRequestStatus()+clearance.getAccountStatus()+clearance.getLibraryStatus()+
						clearance.getProctorStatus()+clearance.getHodStatus();
			if(progressValue<20) {
				barBehaviour="progress-bar progress-bar-warning";
				status="No Request";
				progressValue=15;
				return  new TrackDetailsNoDue(rollNo, progressValue, barBehaviour, status);
			}
			else{
				if(progressValue<100){
					barBehaviour="progress-bar progress-bar-striped active";
					if(progressValue<40) {
						status="Student Requested";
						return  new TrackDetailsNoDue(rollNo, progressValue, barBehaviour, status);
					}
					
					else {
						if(progressValue<60) {
							status="Waiting for Librarian";
							return  new TrackDetailsNoDue(rollNo, progressValue, barBehaviour, status);
						}
						else {
							if(progressValue<80) {
								status="Waiting for Proctor";
								return  new TrackDetailsNoDue(rollNo, progressValue, barBehaviour, status);
							}
							else {
								status="Waiting for HOD";
								return  new TrackDetailsNoDue(rollNo, progressValue, barBehaviour, status);
							}
						}
					}
					
					
				}
				else {
					barBehaviour="progress-bar progress-bar-success progress-bar-striped";
					status="Done!";
					return  new TrackDetailsNoDue(rollNo, progressValue, barBehaviour, status);
				}
			}
			}

			return  new TrackDetailsNoDue(rollNo, progressValue, barBehaviour, status); 
		}
}	
			

	
