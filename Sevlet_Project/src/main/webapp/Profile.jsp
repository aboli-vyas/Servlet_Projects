<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style4.css">
</head>
<body>
<form action="logout" method="post">
<button>Logout</button>
<h1>Profile Page</h1>


<div class="container">
	<h3>First Name :${First_Name}</h3>
	
	<h3>Last Name :${Last_Name}</h3>
	
	<h3>Email :${Email}</h3>
	
	<h3>Mobile Number :${Mobile_Number}</h3>
	
	<h3>Gender :${Gender}</h3>
	
	<h3>City :${City}</h3>
	
	<h3>State :${State}</h3>
	
	<h3>Country :${Country}</h3>
	
    <h3>Education :${Education}</h3>
    
    <h3>10th marks :${tenth_Marks}</h3>
   
    <h3>12th marks :${twelth_Marks}</h3>
   
    <h3>Date of birth :${Date_of_Birth}</h3>
    
	<h3>Technical Skills :${Technical_Skills}</h3>
</div>
</form>
</body>

</html>