<%-- 
    Document   : index
    Created on : Jan 11, 2018, 11:32:37 AM
    Author     : hp
--%>
<%@ taglib uri="/struts-tags" prefix="s" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ACROPOLIS-CDC</title>
<style>
    
body {font-family: Arial;}

/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    -webkit-animation: fadeEffect 1s;
    animation: fadeEffect 1s;
}

/* Fade in tabs */
@-webkit-keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}

@keyframes fadeEffect {
    from {opacity: 0;}
    to {opacity: 1;}
}
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password], input[type=number] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus , input[type=number]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color:orange;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
    font-style:inherit;
    font-size: 120%;
    overflow: auto;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: orange;
   color: black;
   text-align: center;
   font-size:17px;
   
}
a:link, a:visited {
    background-color: orange;
    color: black;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: orangered;
}
#body {
   padding:0px;
   padding-bottom:80px;   /* Height of the footer */
}
</style>
</head>
<body>
    <div id="body">

      <h2><center>Campus Application Login</center></h2>
    
<div class="tab">
    
  <button class="tablinks" onclick="openCity(event, 'Student')"><b>Student Login</b></button>
  <button class="tablinks" onclick="openCity(event, 'AdminLogin')"><b>Faculty Login</b></button>
  
</div>

<div id="Student" class="tabcontent">
  <h3>Student Login</h3>
   
  <form action="StudentLoginAction.action" method="post" name="myForm" onsubmit="return validateForm();">
       <label for="psw-repeat"><b>Aadhar Card Number</b></label>
       <input type="number" name="encrypt" required   autocomplete="off">
      
         <label for="psw-repeat"><b>Password</b></label>
      <input type="password" name="password" required size="4" autocomplete="off">
      
      <button type="submit" >Login</button>
  </form>
    <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up</button>  
      
      
  


<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="SignupAction.action" method="post">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
     <label for="psw-repeat"><b>Aadhar Card Number</b></label>
     <input type="text" placeholder="Your 12 digit Aadhar Number" name="encrypt" required autocomplete="off">
      
       <label for="psw-repeat"><b>Full Name</b></label>
       <input type="text" placeholder="Your Full Name" name="name" required autocomplete="off">
      <label for="psw-repeat"><b>Mobile Number</b></label>
      <input type="text" placeholder="your Mobile Number" name="studentnumber" required autocomplete="off">
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="email address" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>

      <label for="psw-repeat"><b>Enrollment Number</b></label>
      <input type="text" placeholder="Your Enrollment Number" name="re_password" required>
      
      
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>

      

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>

 
      
</div>

<div id="AdminLogin" class="tabcontent">
  <h3>Faculty Login</h3>
  
  <form action="AdminAction.action" method="post">
      <label for="email"><b>Faculty Id</b></label>
      <input type="text" name="facultyid" required>
      
       <label for="email"><b>Password</b></label>
      <input type="password" name="password" required>
     
      <button type="submit" >Login</button>
  </form>
</div>
<br>
<br>
<br>
</div>
<div class="footer">
  <p>Designed & Developed By : <b>Ankit Sakargayen</b>  (IT-Department)</p>
   <p>Under Guidance Of : <b>Mr. Jaynam Sanghvi</b></p>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
    <script>
function validateForm() {
    var x = document.forms["myForm"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
}
</script> 
</body>
</html> 
