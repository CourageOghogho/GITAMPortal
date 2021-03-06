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
    </div>
















    <div class="container-fluid">
        <div class="row card">
            <div class="card-header">
                <div class="row">
                    <div class="col">
                        <center>
                            <h2>Students Fine Details</h2>
                        </center>
                    </div>
                </div>
            </div>
            <br>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <form action="vewDeptFine" method="post">
                            <div class="row form-group">
                                <div class="col-md-9">
                                    <input type="text" class="form-control" name="rollNo" required
                                        placeholder="------------Find Student By Roll No------------.">
                                </div>
                                <div class="col-md-3">
                                    <input type="submit" value="Find" class="form-control btn btn-info">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                               <div class="row container-fluid">

                    <c:set var="sn" scope="session" value="${1}" />
                    <center>
                        <table class="table table-striped table-bordered" id="Studentfines" name="studentFines">
                            <thead>
                                <tr>
                                 
                                    <th scope="col">Fine Contol No</th>
                                    <th scope="col">Roll No.</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">Remark</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:choose>
                                    <c:when test="${deptFines!=null }">
                                        <c:forEach var="deptFine" items="${deptFines}">
                                            <tr>

                                                <td>
                                                    <c:out value="${deptFine.fineCode}" />
                                                </td>
                                                <td>
                                                    <c:out value="${deptFine.rollNo}" />
                                                </td>
                                                <td>
                                                    <c:out value="${deptFine.amount}" />
                                                </td>
                                                <td>
                                                    <c:out value="${deptFine.remark}" />
                                                </td>

                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <center>
                                            <div class="container alert alert-warning" role="alert">
                                                No Record Found!
                                            </div>
                                        </center>
                                    </c:otherwise>
                                </c:choose>
                            </tbody>

                        </table>
                    </center>
                </div>
            </div>
        </div>
    </div>
    </div>