package com.servlet_project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uname= req.getParameter("username");
		String pass= req.getParameter("password");
		
		PrintWriter out = resp.getWriter();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3307/servlet_project", "root",
					"root");
			PreparedStatement ps = c.prepareStatement("select * from reg where email=? AND password=?");
			ps.setString(1, uname);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				
				req.setAttribute("First_Name", rs.getString(2));
				req.setAttribute("Last_Name", rs.getString(3));
				req.setAttribute("Email", rs.getString(4));
				req.setAttribute("Mobile_Number", rs.getLong(5));
				req.setAttribute("Gender", rs.getString(6));
				req.setAttribute("City", rs.getString(7));
				req.setAttribute("State", rs.getString(8));
				req.setAttribute("Country", rs.getString(9));
				req.setAttribute("Education", rs.getString(10));
				req.setAttribute("tenth_Marks", rs.getDouble(11));
				req.setAttribute("twelth_Marks", rs.getDouble(12));
				req.setAttribute("Date_of_Birth", rs.getDate(13));
				req.setAttribute("Technical_Skills", rs.getString(14));
				
				//out.println("<script type='text/javascript'>");
                //out.println("alert('Login Successfull')");
                //out.println("window.location.replace(\"Profile.jsp\");");
                //out.println("</script>");
				
				RequestDispatcher rd=req.getRequestDispatcher("Profile.jsp");
				rd.forward(req, resp);
			}
			else {
				out.println("<script type='text/javascript'>");
                out.println("alert('Invalid Credentials')");
                out.println("window.location.replace(\"Login.html\");");
                out.println("</script>");
				
			}

		} catch (Exception e) {
			out.print(e.getMessage());
		}

	}



	}


