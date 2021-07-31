<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<style type="text/css">

input[type=text], select, textarea {
  width: 50%;
  padding: 4px;
  border: 1px solid #ccc;
  border-radius: 2px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #BDBDBD;
  color: white;
  padding: 4px 20px;
  border: none;
  border-radius: 2px;
  float: left
  width: 50%;
}

input[type=email] {
  background-color: #FFFEC1;
  width: 50%;
  padding: 4px;
  border: 1px solid #ccc;
  border-radius: 2px;
  resize: vertical;
}

input[type=password] {
  background-color: #FFFEC1;
  width: 50%;
  padding: 4px;
  border: 1px solid #ccc;
  border-radius: 2px;
  resize: vertical;
}

.container {
	width:50%;
	position: absolute;
	top:20%;
	left:25%;
	border: 5px;
	background-color: white;
	border-style: none;
	padding-left:30px;
	padding-bottom:20px;
}

body
{
background-color:#f2f2f2
}

.col-25 {
  float: left;
  width: 20%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 80%;
  margin-top: 3px;
}


.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<div class="container"><h3><u>Register New Student</u></h3>
	<form class="form-inline" action="<%= request.getContextPath()%>/registerS" method="post" > 
	  
	   
	    	<div class="row">
		      			<div class="col-25">
		        			<label for="uname">Username</label>
		      			</div>
		      			<div class="col-75">
		       				 <input type="text" id="uname" name="uname" >
		      			</div>
    		</div>
	    	<div class="row">
		      			<div class="col-25">
		        			<label for="fname">First Name</label>
		      			</div>
		      			<div class="col-75">
		       				 <input type="text" id="fname" name="fname" >
		      			</div>
    		</div>
	    	<div class="row">
		      			<div class="col-25">
		        			<label for="lname">Last Name</label>
		      			</div>
		      			<div class="col-75">
		       				 <input type="text" id="lname" name="lname" >
		      			</div>
    		</div>
	    	<div class="row">
		      			<div class="col-25">
		        			<label for="email">E-Mail</label>
		      			</div>
		      			<div class="col-75">
		       				 <input type="email" name="email" size="30">
		      			</div>
    		</div>
    		
    		<div class="row">
		      			<div class="col-25">
		        			<label for="phnum">Phone Number</label>
		      			</div>
		      			<div class="col-75">
		       				 <input type="text" id="phnum" name="phnum" size="30">
		      			</div>
    		</div>	    	   

	    	<div class="row">
      			<div class="col-25">
        			<label for="pwd">Password</label>
      			</div>
      			<div class="col-75">
       				 <input type="password" id="pwd" name="pwd" >
       				 </div>
    		</div>
	    	<div class="row">
      			<div class="col-25">
        			<label for="cpwd">Confirm Password</label>
      			</div>
      			<div class="col-75">
       				 <input type="text" id="cpwd" name="cpwd" >
       				 <input type="submit" value="Add User" style="width:40%;">
      			</div>
    		</div>    			   
  
	 
</form>
</div>



</body>
</html>