<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
 integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" 
 crossorigin="anonymous"></script>
 
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
 integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
 crossorigin="anonymous"></script>
 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" 
integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" 
crossorigin="anonymous"></script>




<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Student Approval Management</title>
    <meta name="viewport" content="width=device-width"  initial-scale="1">


    <style>
        .header {
            background-color: #0094de;
            color: #fff;

        }

        h2 {
            font-family: "Merriweather";
            font-weight: 800;
        }

        .header2 {
            color: white;
            display: flex;
            padding: 0px 50px;

        }

        .heading {
            width: 75%;
        }

        .content {
            background-color: black;
        }

        content.navbar-nav {
            font-size: 28px;
            font-weight: 600;

        }

        content.nav-item {
            padding: 5px;
        }

        .footer {
            background-color: #0094de;
            color: #fff;
        }

        .nav-link {
            color: white;
        }

        .data {
            padding: 30px;
        }

        data>.row {
            padding-top: 15px;
        }
    </style>
    
   
</head>

    <body>
        <div class="header pb-5">
            <div class="row">
                <div class="col-12 text-right">admission enquiry: 08684000891/ 892/893, 09654292946,
                    enquiry@gangainstitute.com</div>
            </div>
            <img style="float:left" ; src="logo.png">
            <div class="row">
                <div class="col-12 text-center">
                    <h2>GANGA INSTITUTE OF TECHNOLOGY AND MANAGEMENT</h2>
                </div>
                <div class="col-12 text-center">Approved by AICTE, New Delhi & Affiliated to Maharshi Dayanand
                    University,Rohtak and HSBTE, Panchkula</div>
                <div class="col-12 text-center">Recognized under Section 2(f) of UGC Act , 1956</div>

            </div>
        </div>
        <div class="header2 bg-dark container-fluid">

            <h2 class="heading">welcome</h2>
            <a href="#" class="nav-link">CHANGE PASSWORD</a>
            <a href="#" class="nav-link">LOGOUT</a>


        </div>
        <div class="content">
            <nav class="navbar navbar-expand-sm">
                <div class="container">
                    <button class="navbar-toggler" data-toggle="collapse" data-target="#abc">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="abc">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a href="#" class="nav-link">LIBRARY</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">ACCOUNTS</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">ASSIGNMENTS</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">RESULTS</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">FEEDBACK</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="data">
        </div>
        <center>
            <h2>Faculty Subject Management</h2>
            <br>
           
        </center>
        <div class="container">
            <table class="table table-striped table-bordered" id="studentList" name="studentList" >
                <thead>
                  <tr>
                    <th scope="col">Teacher ID</th>
                    <th scope="col">SubjectCode</th>
                    <th scope="col">Subject Name</th>
                     <th scope="col">Class Name</th>
                    <th scope="col">Class Capacity</th>
                    <th scope="col">Proctor</th>
                    <th scope="col">Batch</th>

                    
                  </tr>
                </thead>
                <tbody><c:if test="${students!=null}" >
 					<c:forEach var="student" items="${students}" > 
                    <tr>
                        <td><c:out value="${student.sid }"/></td>
                        <td><c:out value="${student.fname }"/></td>
                        <td><c:out value="${student.lname }"/></td>
                        <td><c:out value="${student.rollNo }"/></td>
                       <td><c:out value="${student.email }"/></td>
                        <td><c:out value="${student.course }"/></td>
                        <td><c:out value="${student.batch }"/></td>
                        <td><c:out value="${student.status }"/></td>
                        <td><a href="blockStudent?sid=${student.sid }"><span class="fa-stack fa-lg"><i class="fa fa-user fa-stack-1x"></i>
                         <i class="fa fa-ban fa-stack-2x text-danger" style="color:red;">
                         </i></span></a></td>
                       <td><a href="approveStudent?sid=${student.sid }"><span class="fa-stack fa-lg">
                         <i class="fa fa-check-circle fa-stack-2x" style="color:green;">
                         </i></span></a></td>
                    </tr>
                    </c:forEach>
                    </c:if> 
                </tbody>
                
            </table>           
        </div>
<br> 



<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>



       <script >

		$(document).ready( function () {
		    $('#studentList').DataTable();
		    searching: true,
		    ordering:  true,
		    paging: true
		} );
</script> 
            
            
    </body>

</html>