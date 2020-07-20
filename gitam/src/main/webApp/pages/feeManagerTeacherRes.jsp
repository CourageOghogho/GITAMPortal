<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Fee Management: Teacher</title>
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
        
        <div class="row card">
                                <div class="card-header">
                                    <center>
                                        <h2>Student College Fees Details</h2>
                                    </center>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <form action="findStudentFee" method="post">
                                                <div class="row form-group">
                                                    <div class="col-md-9">
                                                        <input type="text" class="form-control" name="rollNo" required
                                                            placeholder="------------Find Student By Roll No------------.">
                                                    </div>
                                                    <div class="col-md-3">
                                                        <input type="submit" value="Find"
                                                            class="form-control btn btn-info">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col">
                                            <center>
                                                <h3>OR</h3>
                                                <br>
                                                <form action="findStudentFeeAll" method="post">
                                                    <div class="row">

                                                        <div class="form-group col-md-4">

                                                            <select class="custom-select form-control" name="course"
                                                                id="course" required>
                                                                <option>------------Select Course------------</option>
                                                                <option value="Dip-ECE">Dip-ECE</option>
                                                                <option value="Dip-Civil">Dip-Civil</option>
                                                                <option value="Dip-Mech">Dip-Mech</option>
                                                                <option value="Dip-EE">Dip-EE</option>

                                                                <option value="BCA">BCA</option>
                                                                <option value="BBA">BBA</option>

                                                                <option value="B-TECH CSE">B-TECH CSE</option>
                                                                <option value="B-TECH ECE">B-TECH ECE</option>
                                                                <option value="B-TECH FTS">B-TECH FTS</option>
                                                                <option value="B-TECH EE">B-TECH EE</option>
                                                                <option value="B-TECH-Civil">B-TECH-Civil</option>
                                                                <option value="B-TECH-Mech">B-TECH Mech</option>
                                                                <option value="MBA">MBA</option>
                                                                <option value="MCA">MCA</option>
                                                                <option value="M-TECH CFS">M-TECH CFS</option>
                                                                <option value="B-TECH CSE">M-TECH CSE</option>
                                                                <option value="B-TECH ECE">M-TECH ECE</option>
                                                                <option value="B-TECH FTS">M-TECH FTS</option>
                                                                <option value="B-TECH EE">M-TECH EE</option>
                                                                <option value="B-TECH-Civil">M-TECH-Civil</option>
                                                                <option value="B-TECH-Civil">M-TECH-SD</option>
                                                                <option value="B-TECH-Mech">M-TECH Mech</option>

                                                            </select>

                                                        </div>
                                                        <div class="form-group col-md-4">

                                                            <select class="custom-select form-control" name="batch"
                                                                id="batch" required>
                                                                <option>------------Select Batch------------</option>
                                                                <option value="2021">2021</option>
                                                                <option value="2020">2020</option>
                                                                <option value="2019">2019</option>
                                                                <option value="2018">2018</option>
                                                                <option value="2017">2017</option>
                                                                <option value="2016">2016</option>
                                                                <option value="2015">2015</option>
                                                                <option value="2014">2014</option>
                                                                <option value="2013">2013</option>
                                                                <option value="2012">2012</option>
                                                                <option value="2011">2011</option>
                                                                <option value="2010">2010</option>
                                                                <option value="2009">2009</option>
                                                                <option value="2008">2008</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input type="submit" class="btn btn-info form-control"
                                                                value="Feltch All">
                                                        </div>

                                                    </div>
                                                </form>
                                                <br>
                                        </div>
                                        </center>
                                    </div>
                                </div>
                                <div class="row container-fluid">
                                <c:set var = "sn" scope = "session" value = "${1}"/>
                                    <table class="table table-striped table-bordered" id="studentFees"
                                        name="studentFees">
                                        <thead>
                                            <tr>
                                                <th scope="col">S/N</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">Roll No.</th>
                                                <th scope="col">Course</th>
                                                <th scope="col">Batch</th>
                                                <th scope="col">Total Fees</th>
                                                
                                                <th scope="col">Deposited</th>
                                                <th scope="col">Discount</th>
                                                <th scope="col">Due</th>
                                                <th scope="col">Fine</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
											<c:if test="${StudentCollegeFees!=null }">
											<c:forEach var="StudentCollegeFee" items="${StudentCollegeFees}">
                                            <tr>
                                            
                                                <td> <c:out value="${sn}" /></td>
                                                <td> <c:out value="${StudentCollegeFee.fullName}" /></td>
                                                <td> <c:out value="${StudentCollegeFee.rollNo}" /></td>
                                                <td> <c:out value="${StudentCollegeFee.course}" /></td>
                                                <td><c:out value="${StudentCollegeFee.batch}" /></td>
                                                <td><c:out value="${StudentCollegeFee.fee}" /></td>
                                                <td><c:out value="${StudentCollegeFee.deposited}" /></td>
                                                <td> <c:out value="${StudentCollegeFee.discount}" /> </td>
                                                <td> <c:out value="${StudentCollegeFee.due}" /> </td>
                                                <td><c:out value="${StudentCollegeFee.fine}" /></td>

                                            </tr>
                                            </c:forEach>
                                            </c:if>
                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
        
        
        
        </div>
