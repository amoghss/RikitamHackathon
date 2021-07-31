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
    <form action="<%= request.getContextPath()%>/teachers">
    <label for="department" style="align-content: center; padding:5px;">Department</label>
    <select id="department" name="department" style="width: 100%;">
						  	<option value="All">All</option>
						    <option value="Guitar">Guitar Lessons</option>
						    <option value="ESport">Esports Coach</option>
						    <option value="Singing">Singing lessons</option>
						    <option value="Coding">Coding class</option>
						    <option value="English">English Lessons</option>
						    <option value="Poetry">Poetry</option> 
					  </select>
					  <br>
	
	<label for="stars" style="align-content: center; padding:5px;">Rating</label>
	<select id="stars" name="stars" style="width: 100%;">
							<option value="All">All</option>
						    <option value="1">1 Star</option>
						    <option value="2">2 Star</option>
						    <option value="3">3 Star</option>
						    <option value="4">4 Star</option>
						    <option value="5">5 Star</option>
	</select><br><br><br>
	
	<input type="submit"  value="Apply Filter">
    
    </form>
  </div>
  <div class="colomn right"><h1><%= request.getAttribute("Name") %></h1> </div>
</body>
</html>