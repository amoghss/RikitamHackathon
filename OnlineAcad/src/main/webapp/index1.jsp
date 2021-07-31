<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
* {
  box-sizing: border-box;
  float: center;
}

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

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</head>

<body>
<div class="container">
<h3><u><p>Add User</p></u></h3>
	<form class="form-inline" action="/action_page.php" > 
	  
	    <legend></legend>
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
        			<label for="fname">Name</label>
      			</div>
      			<div class="col-75">
       				 <input type="text" id="fname" name="name" >
      			</div>
    		</div>
	    	<div class="row">
      			<div class="col-25">
        			<label for="sname">Surname</label>
      			</div>
      			<div class="col-75">
       				 <input type="text" id="sname" name="Surname" >
      			</div>
    		</div>
	    	<div class="row">
      			<div class="col-25">
        			<label for="email">E-Mail</label>
      			</div>
      			<div class="col-75">
       				 <input type="email" name="email" placeholder="admin" size="30">
      			</div>
    		</div>
	    
	    	<div class="row">
      			<div class="col-25">
        			<label for="department">Department</label>
      			</div>
      			<div class="col-75">
       				 <select >
						  <optgroup>
						  	<option value="Please Select...">Please Select...</option>
						    <option value="Human Resource Management">Human Resource Management</option>
						    <option value="Marketing">Marketing</option>
						    <option value=" Accounting and Finance"> Accounting and Finance</option>
						    <option value=" Production"> Production</option>
						    <option value=" Research and Development "> Research and Development </option>
						    <option value=" Purchasing"> Purchasing</option>
						  </optgroup>
					  </select>
      			</div>
    		</div>	    
	    	<div class="row">
      			<div class="col-25">
        			<label for="position">Position</label>
      			</div>
      			<div class="col-75">
       				 <select >
						  <optgroup >
						    <option value="Please Select...">Please Select...</option>
						    <option value=" Chief executive officer">Chief executive officer</option>
						    <option value=" Chief operating officer">Chief operating officer</option>
						    <option value=" Chief financial officers"> Chief financial officers</option>
						    <option value=" Executive"> Executive</option>
						    <option value=" Manager "> Manager </option>
						    <option value=" Coordinator"> Coordinator</option>
						    <option value=" Team leaderr"> Team leader</option>
						    <option value=" Product manager"> Product manager</option>
						    <option value=" Graphic designer"> Graphic designer</option>
						    <option value=" Human resources manager"> Human resources manager</option>
						    <option value=" Marketing manager"> Marketing manager</option>
						    <option value=" Administrative positions"> Administrative positions</option>
						  </optgroup>
						</select>
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
      			<div class="col-25">
        			<label for="cpwd">Confirm Password</label>
      			</div>
      			<div class="col-75">
       				 <input type="text" id="cpwd" name="cpwd" pattern="(?=.\d)(?=.[a-z])(?=.[A-Z])(?=.[@#$%]).{8,10}" title="Must contain at least one number and one uppercase and lowercase letter, in between 8 to 10"> 
			<input type="submit" value="Add User" style="width:40%;">
      			</div>
    		</div>    			   
  
	 
</form>
</div>
</body>
</html>