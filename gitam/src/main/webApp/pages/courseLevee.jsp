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
                <center>
                    <h2>Departmental Levees</h2>
                </center>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md">
                        <center>
                            <form action="viewDepartmentalFees" method="post">
                                <div class="row">

                                    <div class="form-group col-md-8">

                                        <select class="custom-select form-control" name="course" id="course" required>
                                            <option>------------Select Course------------
                                            </option>
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

                                    <div class="col-md-4">
                                        <input type="submit" class="btn btn-info form-control" value="Get Class">
                                    </div>

                                </div>
                            </form>
                            <br>
                        </center>
                    </div>

                </div>
                <div class="row container-fluid">
                    <c:set var="sn" scope="session" value="${1}" />
                    <table class="table table-striped table-bordered" id="studentFees" name="studentFees">
                        <thead>
                            <tr>
                                <th scope="col">S/N</th>
                                <th scope="col">Levee Code</th>
                                <th scope="col">Course Code</th>
                                <th scope="col">Dept Code</th>
                                <th scope="col">Levee Amount</th>
                                <th scope="col">Remark</th ></tr>
                        </thead>
                        <tbody>
                            <c:choose>
                                <c:when test="${courseLevees!=null }">
                                    <c:forEach var="courseLevee" items="${courseLevees}">
                                        <tr>

                                            <td>
                                                <c:out value="${sn}" />
                                            </td>

                                            <td>
                                                <c:out value="${courseLevee.leveeCode}" />
                                            </td>
                                            <td>
                                                <c:out value="${courseLevee.courseCode}" />
                                            </td>
                                            <td>
                                                <c:out value="${courseLevee.deptCode}" />
                                            </td>
                                            <td>
                                                <c:out value="${courseLevee.leveeAmount}" />
                                            </td>
                                            <td>
                                                <c:out value="${courseLevee.remark}" />
                                            </td>

                                        </tr>
                                        ${sn=sn+1}
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                   <center>
                                    <div class="container-fluid alert alert-warning" role="alert">
                                        No Record Found!
                                    </div>
                                   </center>
                                </c:otherwise>
                            </c:choose>
                        </tbody>

                    </table>
                </div>

            </div>
        </div>
    </div>
</body>

</html>