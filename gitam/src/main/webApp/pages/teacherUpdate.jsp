<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html lang="en">

<head>
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

<body>

  <div class="header pb-5">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 text-right">admission enquiry: 08684000891/ 892/893, 09654292946, enquiry@gangainstitute.com
        </div>
      </div>
      <img style="float:left" ; src="logo.png">
      <div class="row">
        <div class="col-12 text-center">
          <h2>GANGA INSTITUTE OF TECHNOLOGY AND MANAGEMENT</h2>
        </div>
        <div class="col-12 text-center">Approved by AICTE, New Delhi & Affiliated to Maharshi Dayanand University,Rohtak
          and HSBTE, Panchkula</div>
        <div class="col-12 text-center">Recognized under Section 2(f) of UGC Act , 1956</div>

        <h1>
      </div>
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
    <h2>Record Update for Teaching Staff with Reference No: ${teacher.userRef}</h2>
    <form action="updateTeacher" method="post">
    <div class="row">
      <div class="form-group col-md-4">
        <select class="custom-select" name="designation">
          <option selected>Designation</option>
          <option value="hod">HOD</option>
          <option value="prof">Professor</option>
          <option value="Associate Prof">Associate Professor</option>
          <option value="Assistant Prof">Assistant Professor</option>
          <option value="Teaching Assistant">Teaching Assistant</option>
        </select>
      </div>
      <div class="form-group col-md-4">
        <input type="text" class="form-control" name="eid" placeholder="Employee Id" required>
      </div>
      <div class="form-group col-md-4">

        <select class="custom-select" name="dept">
          <option selected>Department</option>
          <option value="cse">Computer Science</option>
          <option value="ece">Electronics & Com.</option>
          <option value="ee">Electical</option>
          <option value="civil">Civil</option>
          <option value="mgnt">Management</option>
          <option value="appliedScience">Applied Science</option>
        </select>
      </div>
    </div>
      <div class="row">
        <div class="form-group col-md-4">
          <input type="text" class="form-control" name="fname" id="firstname" placeholder="First name" required value="${teacher.fname}">
        </div>
        <div class="form-group col-md-4">
          <input type="text" class="form-control" name="mname" id="middlename" placeholder="Middle  name">
        </div>
        <div class="form-group col-md-4">
          <input type="text" class="form-control" name="lname" id="lastname" placeholder="Last name" required>
        </div>
      </div>
      <div class="row">
        <div class="form-group col-md-4">
          <input type="text" class="form-control" name="joinYear" placeholder="Joining year" required>
        </div>
        <div class="form-group col-md-4">
          <input type="text" class="form-control" name="experience" placeholder="Experience in years" required>
        </div>
        <div class="form-group col-md-4">
          <input type="text" class="form-control"name="qualification" placeholder="Highest Degree" required>
        </div>
      </div>
      <div class="row">
        <div class="form-group col-md-4">
          <input type="email" class="form-control" name="email" id="inputEmail4" placeholder="Email" required value="${teacher.email}">
        </div>
        <div class="form-group col-md-4">

          <input type="text" class="form-control" name="mostFavouriteSubject" id="inputSubject1" placeholder="Most Favourite Subject" required>
        </div>
        <div class="form-group col-md-4">

          <input type="text" class="form-control"name="favouriteSubject"  id="inputSubject2" placeholder="Favourite Subject"
            required>
        </div>
        </div>
        <div class="row">
        <div class="form-group col-md-4">
          <input type="number" class="form-control" name="phoneNo" id="inputPhone" placeholder="phone" required>
        </div>
        <div class="form-group col-md-4">

          <input type="date" class="form-control" name="dob" id="inputDate" placeholder="Dob" required value="${teacher.dob }">
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
        </div>
      </div>
      <div class="row">
        <div class="form-group col-md-4">
          Gender:
          <input type="radio" id="Gender" name="gender" value="Male" /> Male
          <input type="radio" id="Gender" name="gender" value="Female" /> Female
          <input type="radio" id="Gender" name="gender" value="Female" /> Others
        </div>
        <div class="form-group col-md-4">
          <input type="text" id="Nationality" name="nationality" placeholder="Nationality" class="form-control" name="customRadioInline1" required>
         
        </div>
      </div> 
      <div class="row">
        <div class="form-group col-md-4">
          <input type="text" class="form-control" name="city" id="inputCity" placeholder="City" required>
        </div>
        <div class="form-group col-md-4">
          <input type="text" id="inputState" name="state" class="form-control" placeholder="State" required>
        </div>
        <div class="form-group col-md-4">
          <input type="text" class="form-control" name="zipCode" id="inputZip" placeholder="Zip" required>
        </div>
      </div >
      <div class="row">
        <div class="form-group col-md-6">
          <input type="text" class="form-control" name="permanentAddress" id="inputAddress" placeholder="Permanent address" required>
        </div>
        <div class="form-group col-md-6">
          <input type="text" class="form-control" name="temporaryAddress" id="inputAddress2" placeholder="Temporary address" required>
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
      <button type="submit" class="btn btn-primary">Update Records</button>
      <button type="reset" class="btn btn-primary">Reset</button>
    </form>

  </div>

</body>

</html>