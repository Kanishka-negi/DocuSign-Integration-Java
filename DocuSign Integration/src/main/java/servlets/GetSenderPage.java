
package servlets;

import docusignapiclasses.SendToRecipient;
import javax.servlet.*;
import javax.servlet.http.*;

import javax.servlet.annotation.*;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.Cookie;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet(name="GetSenderPage",urlPatterns={"/getsenderpage"}) 


public class GetSenderPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	   
	    public GetSenderPage() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			    
			response.sendRedirect("SenderPage.html");
			
		}
		
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response )throws ServletException, IOException
		{
			
			
		}

}

