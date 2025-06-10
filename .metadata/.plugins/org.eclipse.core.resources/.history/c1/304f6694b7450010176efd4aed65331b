package com.servlet_project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Registration extends HttpServlet {
	@Override
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
	    PrintWriter out = resp.getWriter();
		String firstname1 = req.getParameter("firstname");
		String lastname1 = req.getParameter("lastname");
		String email1 = req.getParameter("email");
		
		String mobile1 = req.getParameter("mobile");
		long mobile11 = Long.parseLong(mobile1);
		
		String gender1 = req.getParameter("gender");
		String city1 = req.getParameter("city");
		String state1 = req.getParameter("state");
		String country1 = req.getParameter("country");
		String education1 = req.getParameter("education");
		
		String tenth1 = req.getParameter("tenth");
		double tenth11 = Double.parseDouble(tenth1);
		
		String twelfth1 = req.getParameter("twelfth");
		double twelfth11 = Double.parseDouble(twelfth1);
		
		String dob1 = req.getParameter("dob");
		String skills1 = req.getParameter("skills");
		String password1 = req.getParameter("password");
		
		//Database Connection
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3307/servlet_project","root","root");
					PreparedStatement ps = c.prepareStatement("insert into reg(firstname,lastname,email,mobile,gender,city,state,country,education,tenth,twelfth,dob,skills,password)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
					ps.setString(1,firstname1 );
					ps.setString(2, lastname1);
					ps.setString(3, email1);
					ps.setLong(4, mobile11);
					ps.setString(5, gender1);
					ps.setString(6, city1 );
					ps.setString(7, state1);
					ps.setString(8, country1);
					ps.setString(9, education1);
					ps.setDouble(10, tenth11);
					ps.setDouble(11, twelfth11);
					ps.setString(12, dob1);
					ps.setString(13, skills1);
					ps.setString(14, password1);
					
					
                	int digit_count = 0;
					int special_count=0;
					for(int i = 0; i < password1.length() ; i++) {
						if(password1.charAt(i) >= '0' && password1.charAt(i) <= '9'){
							digit_count = digit_count + 1;
						}
						if((password1.charAt(i) >= 32 && password1.charAt(i) <= 47) || (password1.charAt(i) >= 58 && password1.charAt(i) <= 64) || (password1.charAt(i) >= 91 && password1.charAt(i) <= 96) || (password1.charAt(i) >= 123 && password1.charAt(i) <= 126))
					        special_count = special_count + 1;
					}
					
					
					if(password1.length() >= 8 && password1.length() <= 20 ) {
						
						if(digit_count >= 1) {
							
							if(special_count >= 1) {
								
								ps.setString(14, password1);
								ps.executeUpdate();
								//RequestDispatcher rd=req.getRequestDispatcher("Login.html");
								//rd.forward(req, resp);
								out.println("<script type='text/javascript'>");
			                    out.println("alert('Registration Successfully')");
			                    out.println("window.location.replace(\"Login.html\");");
			                    out.println("</script>");
							
							}
							else {
								//System.out.println("Password should contain at least 1 special charater...");
								out.println("<script type='text/javascript'>");
			                    out.println("alert('Password should contain at least 1 special charater...')");
			                    out.println("window.location.replace(\"Registration.html\");");
			                    out.println("</script>");
							}
						}
						else {
							//System.out.println("Password should contain at least 1 digit...");
							out.println("<script type='text/javascript'>");
		                    out.println("alert('Password should contain at least 1 digit...')");
		                    out.println("window.location.replace(\"Registration.html\");");
		                    out.println("</script>");
						}
					}
					else {
						//System.out.println("Password should be in between 8 - 12 character long ...");  
						out.println("<script type='text/javascript'>");
	                    out.println("alert('Password should be in between 8 - 12 character long ...')");
	                    out.println("window.location.replace(\"Registration.html\");");
	                    out.println("</script>");
							}
							
					
					
				} catch (Exception e) {
					
				}
				
		
	}
	

}
