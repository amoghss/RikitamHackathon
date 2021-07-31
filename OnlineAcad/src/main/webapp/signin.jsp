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

input[type=button] {
  background-color: #BDBDBD;
  color: white;
  padding: 4px 20px;
  border: none;
  border-radius: 2px;
  float: left
  width: 50%;
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

<div class="container"><h3><u>Login</u></h3>
	<form class="form-inline" action="" > 
	  
	   
	    	<div class="row">
		      			<div class="col-25">
		        			<label for="uname">Username</label>
		      			</div>
		      			<div class="col-75">
		       				 <input type="text" id="uname" name="username" >
		      			</div>
    		</div>
	    	<div class="row">
	    	<div class="col-25">
        			<label for="pwd">Password</label>
      			</div>
      			<div class="col-75">
       				 <input type="password" id="pwd" name="pwd" pattern="(?=.\d)(?=.[a-z])(?=.[A-Z])(?=.[@#$%]).{8,10}" title="Must contain at least one number and one uppercase and lowercase letter, in between 8 to 10">
      			</div>
    		</div>
    		
    		<div class="row">
	    	<input type="submit" value="Login" style="width:40%;">
	    	<input type="button" value="Register" onclick="location.href='registerS.jsp';" style="width:40%;">
      			</div>
    		
	 
</form>
</div>



</body>
</html>