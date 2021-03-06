<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Teacher: Due Management</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width" , initial-scale="1">
        <link rel="stylesheet" type="text/css"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

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
        <br>
        <div class="container-fluid">
            <div class="card">
                <div class="card-header">
                    <center>
                        <h2>No Due Management</h2>
                    </center>
                </div>
                <div class="card-body">
                    <div class="row form-group">
                        <div class="col-md-6">
                            <input type="button" class="btn btn-info btn-lg form-control " value="Track Student" data-toggle="collapse"
                            data-target="#track" aria-expanded="false" aria-controls="collapseExample">
                   
                        </div>
                        <div class="col-md-6">
                            <input type="button" class="btn btn-warning btn-lg form-control " value="Approve No Due" data-toggle="collapse"
                            data-target="#approve" aria-expanded="false" aria-controls="collapseExample">
                   
                        </div>                                            
                    </div>
                </div>
            </div>
            <div class="collapse" id="track">
                <div class="card">
                    <div class="card-header">
                        <center>
                            <h3>
                                Track Student No Due Progress
                            </h3>
                        </center>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <form action="trackNoDueT" method="post">
                                <div class="row form-group">
                                    <div class="col-md-9">
                                        <input type="text" name="rollNo" id="" class="form-control"
                                        placeholder="-----------Enter Roll Number-----------">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="submit" value="Track Student" class="btn btn-info btn-lg">
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="collapse" id="approve">
                <div class="card">
                    <div class="card-header">
                        <center>
                            <h3>Approve No Due</h3>
                        </center>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <form action="approveNoDueT" method="post">
                                <div class="row form-group">
                                    <div class="col-md-9">
                                        <input type="text" name="rollNo" id="" class="form-control"
                                        placeholder="-----------Enter Roll Number-----------">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="submit" value="Approve Student" class="btn btn-warning btn-lg">
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
         
        </div>
	</body>
	</html>



        