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
        <div class="row">
            <div class="col-md-2">
                <div class="container btn-group-toggle">
                    <div class="row">
                        <input type="button" class="btn btn-info btn-lg " value="View   Fees" data-toggle="collapse"
                            data-target="#viewFees" aria-expanded="false" aria-controls="collapseExample">
                    </div>
                    <br>
                    <div class="row">
                        <input type="button" class="btn btn-info btn-lg" value="Dept Levee" data-toggle="collapse"
                            data-target="#deptLevee" aria-expanded="false" aria-controls="collapseExample">
                    </div>
                    <br>
                    <div class="row">
                        <input type="button" class="btn btn-warning btn-lg" value="Impose Fine" data-toggle="collapse"
                            data-target="#ImposeFine" aria-expanded="false" aria-controls="collapseExample">
                    </div>
                    <br>
                    <div class="row">
                        <input type="button" class="btn btn-warning btn-lg" value="Remove Fine" data-toggle="collapse"
                            data-target="#removeFine" aria-expanded="false" aria-controls="collapseExample">
                    </div>
                    <br>
                    <div class="row">
                        <a href="dueManagers"> <input type="button" class="btn btn-success btn-lg"
                                value="No Due Form"></a>
                    </div>
                    <br>
                </div>
            </div>
            <div class="col-md-10">
                <div class="container-fluid">
                    <div class="jumbotron jumbotron-fluid">
                        <div class="container">
                            <h1 class="display-4">Introduction</h1>
                            <p class="lead">To perform an operation, click on the button. When completed, again
                                click on the button to collapse the portion.
                            </p>
                        </div>
                    </div>
                    <div class="collapse" id="viewFees">
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
                                                    <input type="submit" value="Find" class="form-control btn btn-info">
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
                        </div>
                    </div>
                    <div class="collapse" id="deptLevee">
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

                                                    <div class="form-group col-md-4">

                                                        <select class="custom-select form-control" name="course"
                                                            id="course" required>
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
                                                        <input type="submit" class="btn btn-info form-control"
                                                            value="Get Class">
                                                    </div>

                                                </div>
                                            </form>
                                            <br>
                                    </div>
                                    </center>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="collapse" id="ImposeFine">
                        <div class="row card">
                            <div class="card-header">
                                <center>
                                    <h2>Fine Management</h2>
                                </center>
                            </div>
                            <div class="card-body">
                                <div class="row btn-group">
                                    <div class="col-md">
                                        <input type="button" value="Impose A Fine" data-toggle="collapse"
                                            data-target="#imposed" aria-expanded="false" class="btn btn-warning btn-lg"
                                            aria-controls="collapseImposeFine">
                                    </div>
                                    <div class="col-md">
                                        <input type="button" value="View Fines" data-toggle="collapse"
                                            data-target="#viewImposed" aria-expanded="false" class="btn btn-info btn-lg"
                                            aria-controls="collapseImposeFine">
                                    </div>
                                    <div class="col-md">
                                        <input type="button" class="btn btn-warning btn-lg" value="Remove Fine"
                                            data-toggle="collapse" data-target="#removeFine" aria-expanded="false"
                                            aria-controls="collapseExample">
                                    </div>
                                </div>
                                <div class="container">

                                    <div class="collapse" id="imposed">
                                        <br>
                                        <form action="fineStudent" method="post">
                                            <div class="row form-group">
                                                <div class="col-md">
                                                    <input type="text" name="rollNo" id="" class="form-control"
                                                        placeholder="Student Roll No." required>
                                                </div>
                                                <div class="col-md">
                                                    <input type="number" name="amount" id="" placeholder="Enter Amount"
                                                        required class="form-control">
                                                </div>


                                            </div>
                                            <div class="row form-group">
                                                <div class="col-md">
                                                    <input type="text" name="reason" id="" class="form-control" required
                                                        placeholder="--------Enter reason for fine">
                                                    </textarea>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col-md">
                                                    <input type="submit" value="Submit" class="btn btn-warning btn-lg">
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="collapse" id="viewImposed">
                                        <br>
                                        <div class="row">
                                            <div class="col">
                                                <form action="vewDeptFine" method="post">
                                                    <div class="row form-group">
                                                        <div class="col-md-9">
                                                            <input type="text" class="form-control" name="rollNo"
                                                                required
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


                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="collapse" id="removeFine">
                            <form action="removefine" method="post">
                                <h3>Revoke A Fine</h3>
                                <div class="row form-group">
                                    <div class="col-md">
                                        <input type="text" name="fineCode" id="" class="form-control"
                                            placeholder="---------Fine Control No------------" required>
                                    </div>
                                    <div class="col-md">
                                        <input type="submit" value="Submit" class="btn btn-warning btn-lg">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                </div>

            </div>

        </div>
    </div>

</body>

</html>