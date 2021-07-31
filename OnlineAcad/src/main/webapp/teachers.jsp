<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Teachers</title>

<style type="text/css">
.column.side {
	  width: 24%;
	  height: 700px;
	  background: #ccc;
	  float: left;
	}

.colomn.right
{	
	padding-left: 10px;
	width: 73%;
	height: 700px;
	background: white;
	float: left;
}
</style>
	
	
</head>
<body>
	<div class="column side">
    <h4>Apply Filters</h4>
    <form action="">
    <label for="department" style="align-content: center; padding:5px;">Department</label>
    <select id="department" name="Department" style="width: 100%;">
						  	<option value="all">Please Select...</option>
						    <option value="guitar">Guitar Lessons</option>
						    <option value="esports">Esports Coach</option>
						    <option value="singing">Singing lessons</option>
						    <option value="code">Coding class</option>
						    <option value="english">English Lessons</option>
						    <option value="poerty">Poetry</option> 
					  </select>
					  <br>
	
	<label for="stars" style="align-content: center; padding:5px;">Rating</label>
	<select id="stars" name="stars" style="width: 100%;">
							<option value="all">Please Select...</option>
						    <option value="1">1 Star</option>
						    <option value="2">2 Star</option>
						    <option value="3">3 Star</option>
						    <option value="4">4 Star</option>
						    <option value="5">5 Star</option>
	</select><br><br><br>
	
	<input type="submit" value="Apply Filter">
    
    </form>
  </div>
  <div class="colomn right"> </div>
</body>
</html>