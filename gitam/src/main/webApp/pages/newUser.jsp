<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html lang="en">
    <head>
          <meta charset="utf-8">
        <title>User Registration</title>

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
            <div class="row card">
              <div class="card-header">
                  <div class="row">
                      <div class="col">
                         <center> <h2>New User Registration</h2></center>
                      </div>
                  </div>
              </div>
              <div class="card-body">
                <div class="col">
                    <form class="needs-validation" novalidate action="addUser" method="post">
                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom01">First Name</label>
                                <input type="text" class="form-control" name="name" id="validationCustom01" required>
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom02">Password</label>
                                <input type="password" name="password" class="form-control" id="validationCustom02" required>
                                <div class="invalid-feedback">
                                    Password must match!
                                </div>
                            </div>



                            <div class="col-md-4 mb-3">
                                <label for="validationCustom03">Confirm Password</label>
                                <input type="password" class="form-control" name="passConfirm" id="validationCustom03" required>
                                <div class="invalid-feedback">
                                    Password must match.
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            
                            <div class="col-md-4 mb-3">
                                <label for="validationCustomUsername">Email</label>
                                <div class="input-group">
                                    <input type="email" class="form-control" name="email" id="validationCustomUsername"
                                        aria-describedby="inputGroupPrepend" required>
                                    <div class="invalid-feedback">
                                        Please choose a email.
                                    </div>
                                </div>
                            </div>
                            
                         
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom04">Role</label>
                                <select class="custom-select" name="role"id="validationCustom04" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option value="Student">Student</option>
                                    <option value="Teacher">Teacher</option>
                                    <option value="Libralian">Libralian</option>
                                    <option value="Account">Account</option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid role.
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationCustom05">Birth Date</label>
                                <input type="date" class="form-control" id="dob" required name="dob">
                                <div class="invalid-feedback">
                                    Please provide a valid Date of Birth.
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                                <label class="form-check-label" for="invalidCheck">
                                    Agree to terms and conditions
                                </label>
                                <div class="invalid-feedback">
                                    You must agree before submitting.
                                </div>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary" value="Register">
                    </form>

                    <script>
                        // Example starter JavaScript for disabling form submissions if there are invalid fields
                        (function () {
                            'use strict';
                            window.addEventListener('load', function () {
                                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                                var forms = document.getElementsByClassName('needs-validation');
                                // Loop over them and prevent submission
                                var validation = Array.prototype.filter.call(forms, function (form) {
                                    form.addEventListener('submit', function (event) {
                                        if (form.checkValidity() === false ) {
                                            event.preventDefault();
                                            event.stopPropagation();
                                        }
                                        form.classList.add('was-validated');
                                    }, false);
                                });
                            }, false);
                        })();
                    </script>
                </div>
              </div>
            </div>
        </div>

    </body>

</html>