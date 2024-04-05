package docusignapiclasses;

import java.sql.*;
import java.util.ArrayList;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DocumentRecipients {
	public String name;
	public String email;
	public String status;
	
	public static void storerecipientsInfo( JsonArray signers,int recipientcount ,String envelpoeid )
	{   
		
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  
		"jdbc:mysql://localhost:3306/proj","root","root");  
		Statement stmt = con.createStatement();
			

        for(int i=0; i<signers.size();i++)
        {   
        	JsonObject signer=signers.get(i).getAsJsonObject();
        	String sql = "INSERT INTO recipientinfo() VALUES ('"+signer.get("name")+"','"+signer.get("email")+"','"+envelpoeid+"')";
            stmt.executeUpdate(sql);
            System.out.println("Success");
        }
	  
		con.close();  
		}catch(Exception e){ System.out.println(e);
		
		
		System.out.println("connection Failed");
		}  }
	
	public static ArrayList<DocumentRecipients> getRecipientsImfo(String accesstoken,String accountid,String envelopeid) throws IOException
	{   
		
		String newenvelopeid="";
        for(int eidlen=1; eidlen<envelopeid.length()-1;eidlen++)
        {
     	   newenvelopeid=newenvelopeid+envelopeid.charAt(eidlen);
    
        }
		
	
		ArrayList<DocumentRecipients> recilist=new ArrayList<>();
		DocumentRecipients rcinfo= new DocumentRecipients();
			try
		       {  
				
				try {
			    	   Class.forName("com.mysql.jdbc.Driver") ;
			          }catch(Exception e)
			          {
			    	   System.out.println();
			           }
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj?useSSL=false","root","root");
				
			    Statement stmt = con.createStatement();
				
		        ResultSet rs = stmt.executeQuery("select rname,remail,status from recipientinfo where envelope_id='"+envelopeid+"'");
		        while(rs.next()){
		        	 
		        	 rcinfo.name= rs.getString("rname");
		        	 rcinfo.email= rs.getString("remail");
		        	 rcinfo.status= rs.getString("status");
		        	 recilist.add(rcinfo);
		        	 System.out.println(recilist.add(rcinfo));
		        	 
		         }
		         con.close(); 
		      } catch (SQLException e) {
		         e.printStackTrace();
					System.out.println(e);

		      } 
			
			
		boolean statusupdated=false;
		for(int i=0; i<recilist.size(); i++)
		{
			if(recilist.get(i).status.equals("sent"))
			{   
				int  recipientcount=recilist.size();
				String[] status=new String[recipientcount];
				status= DocumentStatus.getStatus(accesstoken, accountid, newenvelopeid,recipientcount);
	   		 
	   		 statusupdated=true;  		    		    
			}	
		  if(statusupdated==true)
			{
		   	    break;
			}
		}

		 return recilist;	
		
	}
	
	
	public static void updateStatus() {
		
	}
	
}