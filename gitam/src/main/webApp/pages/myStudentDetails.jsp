<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>My Details: Student</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width" , initial-scale="1">
    <link rel="stylesheet" type="text/css"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
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
    <script src="regform.js"></script>
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

            <h1>
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
    <div class="container">
        <div class="container">
           <div class="card">
               <div class="card-header">
                <div class="row">
                    <div class="col-md">
                        <center>
                        <img src="https://www.gangainstitute.com/wp-content/uploads/2015/01/gitam-logo.png" alt="">
                    </center>
                    </div>
                </div>
               </div>
               <div class="card-body">
                   <div class="row">
                       <div class="col">
                          <center>
                            <h2>Student Detail</h2>
                          </center>
                       </div>
                   </div>
                   <div class="row">
                    <div class="col">
                         <h3>Student Bio Detail</h3>
                       <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        First Name
                        <output>
                        <label><c:out value="${student.fname}"></c:out></label>
                        </output>
                    </div>
                    <div class="col-md-4">
                        Middle Name 
                        <output>
                        <label><c:out value="${student.mname }"></c:out></label>
                        </output>
                    </div>
                    <div class="col-md-4">
                        Last Name
                        <output>
                        <label><c:out value="${student.lname }"></c:out></label>
                        </output>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-4">
                        Gender
                        <output>
                        <label><c:out value="${student.gender }"></c:out></label>
                        </output>
                    </div>
                    <div class="col-md-4">
                        Student Email 
                        <output>
                        <label><c:out value="${student.email}"></c:out></label>
                        </output>
                    </div>
                    <div class="col-md-4">
                        Phone Number
                        <output>
                        <label><c:out value="${student.phoneNo }"></c:out></label>
                        </output>
                    </div>
                </div>
                <br><hr>
                <div class="row">
                    <div class="col">
                        <h3>Course Details</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        Roll Number
                        <output>
                        <label><c:out value="${student.rollNo }"></c:out></label>
                        </output>
                    </div>
                    <div class="col-md-3">
                        Course 
                        <output>
                        <label><c:out value="${student.course}"></c:out></label>
                        </output>
                    </div>
                    <div class="col-md-3">
                        Batch
                        <output>
                        <label for=""><c:out value="${student.batch}"></c:out></label>
                        </output>
                    </div>
                    <div class="col-md-3">
                        Dept
                        <output>
                        <label for=""><c:out value="${student.dept }"></c:out></label>
                        </output>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col">
                        <h3>Addresses</h3>
                    </div>
                </div>
                <div class="row">
                  
                        <div class="col-md">
                            Corresponding Address
                            <output>
                            <label for=""><c:out value="${student.correspondentAddress }"></c:out></label>
                            </output>
                        </div>
                        <div class="col-md">
                            Permanent Address
                            <output>
                            <label for=""><c:out value="${student.city }, ${student.state }, ${student.nationality }"></c:out></label>
                            </output>
                          
                        </div>
                   
                </div>
               </div>
           </div>
        </div>
        </div>
</body>
</html>