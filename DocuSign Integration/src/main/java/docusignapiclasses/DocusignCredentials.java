package docusignapiclasses;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public class DocusignCredentials {
	
	
	public DocusignCredentials()
	{}
  
	public static String getAccessToken(String user_email ) {
		
		System.out.println(1);
		String accesstoken="";
		int id=1;;
		try{ 
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","root","root");  
			Statement stmt = con.createStatement();
			String sql ="select id from user where uemail='"+user_email+"'";
		    ResultSet rs1=stmt.executeQuery(sql);
			
			
	            //Display values rc
	        while(rs1.next()) {
	            id= rs1.getInt("id");
	       
	        }
			
			System.out.println("hi");
	        sql="select access_token from Docusign_Credentials where id=1";
	        ResultSet rs2=stmt.executeQuery(sql);
	        System.out.println("hlo");
	        while(rs2.next()) {
	        	accesstoken=rs2.getString("access_token");
	        	System.out.println(accesstoken);
	        	System.out.println("hlo");
	        }
	       
		//	System.out.println("connection Successful");
			con.close();  
			}
		
		catch(Exception e){ 
			
			System.out.println("connection Failed");
			}  
	    System.out.println(accesstoken);
	
	 	
		return 	accesstoken;
    }
    
	public static String getAccountId(String user_email) {
		System.out.println("email");
		String accountid="";
		int id=1;;
		try{ 
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","root","root");  
			Statement stmt = con.createStatement();
			String sql ="select id from user where uemail='"+user_email+"'";
		     ResultSet rs1=stmt.executeQuery(sql);
			System.out.println("hello22");
			
	            //Display values rc
	        while(rs1.next()) {
	            id= rs1.getInt("id");
	        	
	        }

	        sql="select account_id from Docusign_Credentials where id=1";
	        ResultSet rs2=stmt.executeQuery(sql);

	        while(rs2.next()) {
	        	accountid=rs2.getString("account_id");
	        
	        }
	
			con.close();  
			}
		
		catch(Exception e){ 
			
			System.out.println("connection Failed");
			}  	
    	return accountid;
	}	
	
}
