package docusignapiclasses;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.io.IOException;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonArray;

public class DocumentStatus {
	
	
	public static String[]  getStatus(String accesstoken,String accountid ,String envelopeid,int recipientcount) throws IOException
	{
		 System.out.println("updating status");

		 System.out.println(accesstoken);
		 System.out.println(accountid);
		 System.out.println(envelopeid);
		 
		 URL url;
		 StringBuffer response;
		 String status[]= new String[recipientcount];
		 String recopientstatus;
		 System.out.println("updating status");
		 try {
			 System.out.print("sending");
			 url = new URL("https://demo.docusign.net/restapi/v2.1/accounts/"+accountid+"/envelopes/"+envelopeid+"/recipients");
			 System.out.println("opened");
			 HttpURLConnection con = (HttpURLConnection)url.openConnection();
	   		 con.setRequestMethod("GET");
			 con.setRequestProperty("Authorization", "Bearer "+accesstoken);
			 con.setRequestProperty("Content-Type", "application/json");
	         con.setDoOutput(true);
	         System.out.println("headers set");
	         
	        
		     int responseCode = con.getResponseCode();
		     System.out.println("POST Response Code :: " + responseCode);

		     if(responseCode == 200) { //success
			
		     BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
			 String inputLine;
			  response = new StringBuffer();

			 while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			    }
			 in.close();
	        System.out.println(response.toString());
		
			   String recipients=response.toString();
			   Gson gson = new Gson();
				
			  JsonObject jsonObject = gson.fromJson(recipients, JsonObject.class);
				 JsonArray signersarray = jsonObject.getAsJsonArray("signers");
				 for(int i=0; i<signersarray.size(); i++)
				    {
					 JsonObject signer=signersarray.get(i).getAsJsonObject();
					 
					  recopientstatus=signer.get("status").toString();
					 System.out.println("hello"+recopientstatus);
					 status[i]=recopientstatus;
				    }	   
				 System.out.println("updating status");
		     }  
		     else {
			 System.out.println("POST request did not work.");
		     }
	            } 
		 
		     catch (MalformedURLException e) {
	   	     System.out.println("Failure");		
		     e.printStackTrace();
		 
	          }
		 
		 for(int i=0; i<status.length; i++)
		 {
			 System.out.println("hello");
			 System.out.println(status[i]);
		 }
		 
         return status;
		 
		

	}
		
			
		    
}