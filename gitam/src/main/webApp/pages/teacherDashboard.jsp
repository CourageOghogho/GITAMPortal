<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html lang="en">
<>

    <head>
        <meta charset="utf-8">
        <title>Dashboard</title>
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



        <div class="container-fluid ">
            <div class="row container-fluid">
                <div class="col-md-6">
                    <div class="card">
                    <center>
                        <div class="card-body"> 
                            <div class="row">
                                <div class="col">
                                        <img width="100px" src="img/generalUser.png" />
                                </div>

                            </div>
                                <div class="mx-auto" style="width: 200px;">
                                    <span class="badge badge-pill badge-warning">Blocked</span>
                                </div>
                            <div>

                                <hr>

                            </div>
                            <div class="row">
                                <div class="col">
                                    <form action="">
                                        <div class="form-group row">
                                            <div class="col-md-12">
                                                <label for="fullname">Full Name</label>

                                                <input type="text" name="fullName" class="form-control" 
                                                value="${teacher.fname }  ${teacher.lname }" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="email">Email</label>
                                                    <input type="text" name="email" class="form-control"
                                                   value=" ${teacher.email }" readonly>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="designation">Desigtn</label>
                                                    <input type="text" class="form-control" name="designation"
                                                    value=" ${teacher.designition }"  readonly>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <div class="col-md-6">
                                                    <label for="dept">Dept</label>
                                                    <input type="text" name="dept" class="form-control"
                                                    value=" ${teacher.department }" readonly>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="qualification">Degree</label>

                                                    <input type="text" name="qualification" class="form-control"
                                                        readonly value=" ${teacher.qualification }">
                                                </div>
                                            </div>
                                            <div class="form-group row ">
                                                <div class="col-md-4">
                                                    <label for="nationality">National</label>
                                                        <input type="text" name="nationality" class="form-control"
                                                            readonly  value=" ${teacher.nationality }">
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label for="state">State</label>
                                                        <input type="text" name="state" class="form-control"
                                                        value=" ${teacher.state }" readonly>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <label for="city">City</label>
                                                        <input type="text" name="city" class="form-control"
                                                         value=" ${teacher.city }" readonly>
                                                    </div>
                                                </div>
                                                <div class="row form-group">

                                                    <div class="col-md-12">

                                                        <label for="country">Full Address</label>

                                                        <input type="text" class="form-control"
                                                         value=" ${teacher.correspondentAddress }" readonly>
                                           
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <a href=""></a><input type="button" value="Update Details"
                                                            class="btn btn-warning  btn-block btn-lg">
                                                        </input></a>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <a href=""></a><input type="button" value="Change Password"
                                                            class="btn btn-warning  btn-block btn-lg">
                                                        </input></a>
                                                    </div>
                                                </div>
                                            </div>

                                    </form>
                                </div>
                            </div>

                        </div></center>
                    </div>
                </div>
                    <div class="col-md-6">
                        <div class="row container-fluid">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h2>Notifications</h2>
                                    </div>
                                    <div class="card-body">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <br><br>
                        <div class="row container-fluid">
                            <div class="col">
                                <div class="card">
                                    <div class="card-header">
                                        <h3>Operations</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-4 ">
                                                <a href="feeManagerT"><input type="button" value="Fee Status"
                                                        class=" btn btn-success btn-lg"></a>
                                            </div>
                                            <div class="col-md-4">
                                                <a href="assignmentT?EID=${teacher.eID }"><input type="button" value="Assignments"
                                                        class=" btn btn-success btn-lg"></a>
                                            </div>
                                            <div class="col-md-4">
                                                <a href="regManager"><input type="button" value="Approve Reg"
                                                        class=" btn btn-success btn-lg"></a>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <br>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4 ">
                                                <a href="teacherSubjectManager?EID=${teacher.eID }"><input type="button" value="My Subjects"
                                                        class=" btn btn-success btn-lg"></a>
                                            </div>
                                            <div class="col-md-4">
                                                <a href="specialDuty"><input type="button" value="Other Duty"
                                                        class=" btn btn-success btn-lg"></a>
                                            </div>
                                            <div class="col-md-4">
                                                <a href="emailLogin"><input type="button" value="Login Email"
                                                        class=" btn btn-info btn-lg"></a>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col">
                                                <br>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


            <div class="footer container-fluid p-5">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="#" class="nav-link">Ganga Group of Institutions</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">MDU, Rohtak</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">AICTE, NEW DELHI</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">HSBTE</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Pay Online</a>
                    </li>
                </ul>
    </body>

</html>