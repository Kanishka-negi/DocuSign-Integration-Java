package docusignapiclasses;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import docusignapiclasses.DocumentRecipients;
import docusignapiclasses.SentDocuments;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import jsonfilterclases.*;

public class SendToRecipient {
	   
	public SendToRecipient(){
		
	}
    
	public static String  send(String accesstoken,String account_id, String requestbody) throws IOException
	{
	 URL url;
	 Integer responsecode=null;
	 
	 try {
		 System.out.print("sending");
		url = new URL("https://demo.docusign.net/restapi/v2.1/accounts/"+account_id+"/envelopes");
		System.out.println("opened");
		HttpURLConnection con = (HttpURLConnection)url.openConnection();
		con.setRequestMethod("POST");
		con.setRequestProperty("Authorization", "Bearer "+accesstoken);
		con.setRequestProperty("Content-Type", "application/json");
        con.setDoOutput(true);
        String requestBody1=requestbody;
        
        try(OutputStream os = con.getOutputStream()){
      	    byte[] input = requestbody.getBytes("utf-8");
       	    os.write(input, 0, input.length);	
        }
         catch(Exception e){
        	System.out.println(e);
         }
        responsecode = con.getResponseCode();
	    System.out.println("POST Response Code :: " + responsecode);

	    if(responsecode == 201) { //success
		
	    BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();
        
		// print result
		String documentid=JsonBodyFilter.getDocumentId(requestbody);
		String documentname=JsonBodyFilter.getDocumentName(requestbody);
		String envelopeid=GetRsponseAttribute.getEnvelopeId(response.toString());
		String status =GetRsponseAttribute.getStatus(response.toString());
		
		SentDocuments.storeInfoToDtabase(envelopeid,documentid,status,documentname,"pdf",account_id);
		
		Gson gson= new Gson();
		JsonObject jsonrequestbody= gson.fromJson(requestbody, JsonObject.class);	
		System.out.println();
		JsonObject recipients=jsonrequestbody.getAsJsonObject("recipients");
		JsonArray signers=recipients.getAsJsonArray("signers");	 
		DocumentRecipients.storerecipientsInfo(signers,signers.size(),envelopeid);
				
	 } else {
		System.out.println("POST request did not work.");
	 }
    } 	 
	 catch (MalformedURLException e) {
   	 System.out.println("Failure");		
	 e.printStackTrace();
	 
}
	 
	 return responsecode.toString();

}
			
	}
	

