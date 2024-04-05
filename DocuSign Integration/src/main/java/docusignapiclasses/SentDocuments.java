package docusignapiclasses;
import java.util.ArrayList;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class SentDocuments {
	
	
public static void storeInfoToDtabase(String envelope_id,String document_id,String status ,String document_name,String document_type,String account_id )
	{   
		
		try{ 
			System.out.println("Storing sent document data to db");
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/proj","root","root");  
			Statement stmt = con.createStatement();
			String sql = "INSERT INTO sent_documents VALUES ('"+document_id+"','"+status+"','"+document_name+"','"+document_type+"','"+account_id+"','"+envelope_id+"')";
			stmt.executeUpdate(sql);
			System.out.println("connection Successful");
			con.close();  
			}
		
		catch(Exception e){ System.out.println(e);
			
			System.out.println("connection Failed");
			}  

	}
public static ArrayList<DocumentInfo> getInfoFromDtabase(String accesstoken ,String accountid)throws SQLException
{         // cbb9c40f-aaa4-43e7-9a32-5ad4b75fb881

	 ArrayList<DocumentInfo> documentlist= new ArrayList<DocumentInfo>();  
       try
       {  try {
    	   Class.forName("com.mysql.jdbc.Driver") ;
          }catch(Exception e)
          {
    	   System.out.println();
           }
    	   
    	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proj","root","root");
		  Statement stmt = con.createStatement();
          ResultSet rs = stmt.executeQuery("select document_name,document_type,status,envelope_id from  sent_documents where account_id='"+accountid+"'");
          while(rs.next()){
            DocumentInfo docinfo= new DocumentInfo();
            docinfo.documentname=rs.getString("document_name");
            docinfo.documenttype=rs.getString("document_type");
            docinfo.status=rs.getString("status");  
           
           String envelopeid=rs.getString("envelope_id");
                
           try {
            docinfo.rcarry=DocumentRecipients.getRecipientsImfo(accesstoken,accountid,envelopeid);
            }
           catch(Exception e)
            {
            	System.out.println(e);
            }
            documentlist.add(docinfo);
            
         }
         con.close(); 
      } catch (SQLException e) {
         e.printStackTrace();
			System.out.println("connection Failed");

      } 
       
       
       
	return documentlist; 
}

}
	
	