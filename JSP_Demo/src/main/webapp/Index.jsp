<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
      font-family: Arial, sans-serif;
      background: #f0f0f0;
    }
    .container {
      width: 400px;
      margin: 80px auto;
      background: #fff;
      padding: 20px 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    label {
      display: block;
      margin: 10px 0 5px;
    }
    input[type="text"],
    input[type="email"],
    input[type="password"],
    select {
      width: 100%;
      padding: 8px;
      margin-bottom: 15px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    
    input[type="submit"] {
      background: #28a745;
      color: white;
      padding: 10px;
      width: 100%;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background: #218838;
    }
  </style>
</head>
<body>
<div class="container">
    <h2>Registration Form</h2>
    <form action="Index.jsp" method="post">
      <label for="fullname">Full Name:</label>
      <input type="text" id="fullname" name="fullname" required>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required>

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>

      <label for="country">Country:</label>
      <select id="country" name="country" required>
        <option value="">Select Country</option>
        <option value="india">India</option>
        <option value="usa">USA</option>
        <option value="uk">UK</option>
        <option value="australia">Australia</option>
      </select>

      <input type="submit" value="Register">
    </form>
  </div>
<%
String fname= request.getParameter("fullname");
String email= request.getParameter("email");
String pass= request.getParameter("password");
String country= request.getParameter("country");

if(fname != null && email != null && pass != null && country != null){
%>
Full Name :<%=fname %><br><br>
Email:<%=email%><br><br>
Country:<%= country %>
<%
}
%>

</body>
</html>