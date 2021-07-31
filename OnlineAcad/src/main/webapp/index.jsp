<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Academy</title>
<style type="text/css">
		
    header {
	  background-color: #043C5B;
	  padding: 5px;
	  text-align: center;
	  
	  color: white;
	}

	ul {
	  list-style-type: none;
	  margin: 0;
	  padding: 0;
	  overflow: hidden;
	  
	}
	li {
	  float: left;
	}

	li a {
	  display: block;
	  color: white;
	  text-align: center;
	  padding: 14px 16px;
	  text-decoration: none;
	}

	li a:hover {
	  background-color: #2C0505;
	}

	footer {
	  background-color: #777;
	  padding: 10px;
	  text-align: center;
	  color: white;
	  margin-top: 10px;
	  margin-bottom: 10px;
	}

	.column {
	  float: left;
	  margin-top: 10px;
	  padding: 4px;
	}

	
	.column.side {
	  width: 24%;
	  background: #ccc
	}

	.column.side2 {
	  width: 24%;
	  background: #ccc
	}

	
	.column.middle {
	  width: 45%;
	  margin-left: 10px;
	  margin-right: 10px;
	  padding-left: 10px;
	  padding-right: 10px;
	  background-color: #FFF3C3;

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

	<header>
		
        <h2 style="font-size: 35px;">Online Academy</h2>
        <div style="background-color:#710404 ; border: none;border-radius: 4px; padding: 3px;">
        <ul>
		  <li><a href="#about">About Us</a></li>
		  <li><a href="register.jsp">Register as Teacher</a></li>
		  <li><a href="registerS.jsp">Register as Student</a></li>
		  <li><a href="signin.jsp">Sign in</a></li>
		</ul>
 		</div>
    </header>

    <section>
    	<div class="row">
  <div class="column side">
    <h3>Courses Offered</h3>
    <ul style="background-color: #D9D0AC, list-style-type:none;" >
		  <li style="width:100%;"><a href="#Guitar">Guitar Lessons</a></li>
		  <li style="width:100%;"><a href="#esports">Esports Coach</a></li>
		  <li style="width:100%;"><a href="#singing">Singing lessons</a></li>
		  <li style="width:100%;"><a href="#coding">Coding class</a></li>
		  <li style="width:100%;"><a href="#english">English Lessons</a></li>
		  <li style="width:100%;"><a href="#poetry">Poetry</a></li>
		</ul>
  </div>
  
  <div class="column middle">
    <h3>What is Online Academy?</h3>
    <p>This is a Demo Project Made as a part of Hackathon, The question is</p>
    <p>Ram has a 14 y/o son who like everyone else has been stuck in his house for more than a year now due to lockdowns. He has his online school classes but after school he is bored. He is keen on learning guitar but with everython closed he doesn,t have any hopes of finding a teacher who could teach him. Similarly Niraj's older sister, Punmita is keen on learning clasical music and painting.</p>
    <p><br>On the other hand, there are countless skilled techers who would like to make good use of their time and are willing to teach a subject or a skill online to students like Punmita and Niraj for a small Fee.<br> What if there was a site that would help students fond online teachers to learn a skill or subject online.</p>
      </div>
  
  <div class="column side2">
    <h3>Reviews</h3>
    <p>Neeraj says :The Learning is made easy this Site...</p>
    <p><br>Punmita says : Got to learn alot by this site in my free time..</p>
    <p><br>Raj says : A must try in this lockdown great way to learn...</p>
  </div>
</div>


    </section>

    <footer>
  <p>Demo Project</p>
</footer>

</body>
</html>
