<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html lang="en">
  <head>
        <meta charset="utf-8">
        <title>Student Registered</title>

        <link href="static/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

         <link href="static/datatables/css/jquery.dataTables.min.css" rel="stylesheet" />

        <link href="static/fontawesome/css/all.css" rel="stylesheet" />

        <link href="static/css/myCustomeStyleSheet.css" rel="stylesheet" />

        <script src="static/bootstrap/js/jquery-3.4.1.slim.min.js"></script>

        <script src="static/bootstrap/js/popper.min.js"></script>

        <script src="static/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/myCustomeStyleSheet.css">
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


       <h1>Success.........</h1>
       <h2>New Student registered <br>
       Details:  Name: ${student.fname }
       			 ID: ${student.sid }</h2> <a href="" > <button>Continue to update your record</button></a>
       </h2>
       
    </body>

</html>