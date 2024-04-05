package servlets;
import docusignapiclasses.DocusignCredentials;
import javax.servlet.*;
import javax.servlet.http.*;

import javax.servlet.annotation.*;
import jsonfilterclases.JsonBodyFilter;
import docusignapiclasses.SendToRecipient;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.Cookie;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
import jsonfilterclases.JsonBodyFilter;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonArray;
@WebServlet(name="GetDocumentRequest",urlPatterns={"/getdocumentrequest"}) 


public class SendDocument extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	   
	    public SendDocument() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			    
			
		}
		
		
		protected void doPost(HttpServletRequest request, HttpServletResponse response )throws ServletException, IOException
		{
		  		  
		   String password=(String)  request.getSession().getAttribute("upwd");
		   String user_email=(String) request.getSession().getAttribute("uemail");
		   System.out.println(password);
		   System.out.println(user_email);
		   BufferedReader reader = request.getReader();
		   StringBuilder requestbody = new StringBuilder();
		   String line;
		    while ((line = reader.readLine()) != null) {
		        requestbody.append(line);
		    }
		    reader.close();
		   System.out.print("Request Body");
		   
		   String filteredbody=JsonBodyFilter.filter(requestbody.toString());
		 
		   String  AccessCode=DocusignCredentials.getAccessToken(user_email);
		   String account_id=DocusignCredentials.getAccountId(user_email);//DocusignCredentials.getAccointId();
		   System.out.println("hello");
		   System.out.println(AccessCode);
		   System.out.println(account_id);
           System.out.println("filtered body");
		   String responsecode= SendToRecipient.send(AccessCode,account_id,filteredbody);
		   PrintWriter out=response.getWriter();
		   out.print(responsecode);
           
			
		}
		
	
}
