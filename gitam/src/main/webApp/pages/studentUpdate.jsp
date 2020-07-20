<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html lang="en">

<head>
    <title>Student Update</title>
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
        <div class="container-fluid">
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
        <h3><strong>Update record for ID: ${student.userRef}</strong></h3>
        <form name="sform" action="updateStudent" method="POST" onsubmit="return validateform()">
            <div class="row">
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" id="fname" name="fname" placeholder="First name" readonly
                        value="${student.fname}">
                    <div class="error text-warning" id="firstnameErr"></div>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" id="middlename" name="middlename"
                        placeholder="Middle  name">

                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last name">
                    <div class="error text-warning" id="lastnameErr"></div>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" placeholder="Roll no." id="roll" name="rollNo">
                    <div class="error text-warning" id="rollErr"></div>
                </div>
                <div class="form-group col-md-4">

                    <select class="custom-select" name="course" id="course">
                        <option selected >-----Course----</option>
                        
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
                        <div class="error text-warning" id="departmentErr"></div>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control " name="batch" id="batch" placeholder="Batch">
                    <div class="error text-warning" id="batchErr"></div>
                </div>
                <div class="form-group col-md-4">
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="${student.email }">
                    <div class="error text-warning" id="emailErr"></div>
                </div>
                 <div class="form-group col-md-4">

        <select class="custom-select" name="dept">
          <option selected>Department</option>
          <option value="Computer Science">Computer Science</option>
          <option value="Electronics & Com.">Electronics & Com.</option>
          <option value="Electical">Electical</option>
          <option value="Civil">Civil</option>
          <option value="Management">Management</option>
          <option value="Applied Science">Applied Science</option>
        </select>
      </div>
                <div class="form-group col-md-4">
                    <input type="password" class="form-control" id="password2" name="password2"
                        placeholder="Confirm password">
                    <div class="error text-warning" id="passwordErr"></div>
                </div>

                <div class="form-group col-md-4">
                    <input type="number" class="form-control" id="phone" name="phoneNo" placeholder="phone">
                    <div class="error text-warning" id="phoneErr"></div>
                </div>
                <div class="form-group col-md-4">

                    <input type="text" class="form-control" id="birth" name="dob" placeholder="Dob" readonly
                        value="${student.dob}">
                </div>
                <div class="form-group col-md-4">
                    <select class="form-control" id="blood" name="bloodGroup">
                        <option>-----BLOOD_GROUP-----</option>
                        <option value="O+">O+</option>
                        <option value="O-">O-</option>
                        <option value="A+">A+</option>
                        <option value="A-">A-</option>
                        <option value="B+">B+</option>
                        <option value="B-">B-</option>
                        <option value="AB+">AB+</option>
                        <option value="AB-">AB-</option>
                        <option value="unknown">I don't know my blood group</option>
                    </select>
                    <div class="error text-warning" id="bloodErr"></div>
                </div>
                <div class="form-group col-md-4">
                    Gender:
                    <input type="radio" id="gender" name="gender" value="Male" /> Male
                    <input type="radio" id="gender" name="gender" value="Female" /> Female
                    <input type="radio" id="gender" name="gender" value="Others" /> Others
                    <div class="error text-warning" id="genderErr"></div>
                </div>
                <div class="form-group col-md-8">
                    Nationality:
                    <input type="radio" id="Nationality" name="nationality" value="Indian" checked> Indian
                    <input type="radio" id="Nationality" name="nationality" value="Others"> Others
                </div>

                <div class="form-group col-md-4">
                    <input type="text" class="form-control" id="city" name="city" placeholder="City">
                    <div class="error text-warning" id="cityErr"></div>
                </div>
                <div class="form-group col-md-4">
                   <input type="text" class="form-control" id="state" name="state" placeholder="State">
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" id="zip" name="zip" placeholder="Zip">
                    <div class="error text-warning" id="zipErr"></div>
                </div>
                <div class="form-group col-md-12">
                    <input type="text" class="form-control" id="inputaddress" name="PermanentAddress" placeholder="Permanent address">
                </div>
                <div class="form-group col-md-12">
                    <input type="text" class="form-control" name="correspondentAddress" id="correspondentAddress" placeholder="Correspondence address">
                </div>
            </div>
            <div class="form-group">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                        Check me out
                    </label>
                </div>
            </div>
            <div class="row btn-group">
                <div class="col-6">
                    <input type="reset" class="btn btn-primary btn-lg " value="Reset">
                </div>
                <div class="col-6">
                    <input type="submit" id="submit" name="submit" class="btn btn-warning btn-lg " value="Update">
                </div>
            </div>
            
           
        </form>

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
    </div>
</body>

</html>