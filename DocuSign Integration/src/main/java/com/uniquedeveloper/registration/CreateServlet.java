package com.uniquedeveloper.registration;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.*;
import javax.servlet.http.*;

import javax.servlet.annotation.*;

@SuppressWarnings("unused")
@WebServlet("/create")
public class CreateServlet extends HttpServlet {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    

	HttpSession session2 = request.getSession();
	
	
	String uemail = (String) session2.getAttribute("uemail");
	StringBuffer url = request.getRequestURL();
	String url1 = url.toString();
	String  fileExt = " ";
	 Cookie[] cookies = request.getCookies();
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals("myCookie")) {
	                String cookieValue = cookie.getValue();
	                 fileExt = cookieValue;
	                 System.out.println(fileExt);
	                break;
	            }
	        }
	    }
 try {  
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj?useSSL=false","root","root");
    PreparedStatement stmt = con.prepareStatement("INSERT INTO onlyfiles VALUES (?,?)"); 
    stmt.setString(1,url1 +  fileExt);
   stmt.setString(2, uemail);
   
    
    
    stmt.executeUpdate(); // Close the database 
    con.close(); 
    }
  catch (Exception e) { 
	  e.printStackTrace(); 
	  }
 
     if (fileExt.equals("xlsx")) {
      response.sendRedirect("http://localhost/example/editor?fileExt=xlsx");
    } else if (fileExt.equals("pptx")) {
      response.sendRedirect("http://localhost/example/editor?fileExt=pptx");
    } else if (fileExt.equals("docxf")) {
      response.sendRedirect("http://localhost/example/editor?fileExt=docxf");
    } else if (fileExt.equals("docx")) {
      response.sendRedirect("http://localhost/example/editor?fileExt=docx");
    } else {
      
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      out.println("<html><head><title>Error</title></head><body><h1>Invalid file extension</h1></body></html>");
    }
  
  }
}