package jsonfilterclases;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonArray;

public class JsonBodyFilter {
	
	
	public static String filter(String requestbody)
	{   
		
		 Gson gson = new Gson();
		 JsonObject jsonObject = gson.fromJson(requestbody, JsonObject.class);
		    //System.out.println("hello");
		   // System.out.println(jsonObject);
		    // Remove the "city" key from the nested JSON object
		   // JsonObject addressObject = jsonObject.getAsJsonObject("location");
		 JsonArray documentsarray = jsonObject.getAsJsonArray("documents");
		 documentsarray.get(0).getAsJsonObject().remove("location");
		 return jsonObject.toString();
	}
	
	
	public static String getDocumentName(String requestbody)
	{   
		
		Gson gson = new Gson();
		JsonObject jsonObject = gson.fromJson(requestbody, JsonObject.class);
		JsonArray documentsarray = jsonObject.getAsJsonArray("documents");
		JsonObject documentobject =documentsarray.get(0).getAsJsonObject() ;
		System.out.println(documentobject.get("name"));
		return documentobject.get("name").toString();
		 //System.out.println("hello");
		   // System.out.println(jsonObject);
		 // Remove the "city" key from the nested JSON object
		 // JsonObject addressObject = jsonObject.getAsJsonObject("location");
	     //JsonArray documents = jsonObject.getAsJsonArray("documents");
		 //System.out.println(documentsarray);
		// JsonObject jsonObject = gson.fromJson(filteredbody, JsonObject.class);
		   //System.out.println("hello");
		  //System.out.println(jsonObject);
		    // Remove the "city" key from the nested JSON object
		   // JsonObject addressObject = jsonObject.getAsJsonObject("location");
		// JsonArray darray = jsonObject.getAsJsonArray("documents");
		   //System.out.println(darray);
		   
		  //  System.out.println("hello1");
		  //documentsarray.get(0).getAsJsonObject().remove("location");
		   // System.out.println("hello1");
		   // System.out.println(documentsarray.get(0).getAsJsonObject().remove("location"));
		   //System.out.println(fruitsArray.remove(0));
		   // addressObject.remove("city");
		   // System.out.println(jsonObject.toString());
		 
	}
	
	public static String getDocumentId(String requestbody)
	{   
		
		 Gson gson = new Gson();
		 JsonObject jsonObject = gson.fromJson(requestbody, JsonObject.class);
		    //System.out.println("hello");
		   // System.out.println(jsonObject);
		    // Remove the "city" key from the nested JSON object
		   // JsonObject addressObject = jsonObject.getAsJsonObject("location");
		 JsonArray documentsarray = jsonObject.getAsJsonArray("documents");
		 //System.out.println(documentsarray);
		// JsonObject jsonObject = gson.fromJson(filteredbody, JsonObject.class);
		   //System.out.println("hello");
		  //System.out.println(jsonObject);
		    // Remove the "city" key from the nested JSON object
		   // JsonObject addressObject = jsonObject.getAsJsonObject("location");
		// JsonArray darray = jsonObject.getAsJsonArray("documents");
		   //System.out.println(darray);
		   JsonObject documentobject =documentsarray.get(0).getAsJsonObject() ;
		   System.out.println(documentobject.get("documentId"));
		  //  System.out.println("hello1");
		// JsonArray documents = jsonObject.getAsJsonArray("documents");
		
		  //documentsarray.get(0).getAsJsonObject().remove("location");
		   // System.out.println("hello1");
		   // System.out.println(documentsarray.get(0).getAsJsonObject().remove("location"));
		   //System.out.println(fruitsArray.remove(0));
		   // addressObject.remove("city");
		   // System.out.println(jsonObject.toString());
		 //return documents.get(1).toString();
		 return documentobject.get("documentId").toString();
		//String jsonString = requestBody.toString();
		   //Gson gson = new Gson();
		   //JsonObject jsonObject = gson.fromJson(jsonString, JsonObject.class);
		   //System.out.println("hello");
		  //System.out.println(jsonObject);
		    // Remove the "city" key from the nested JSON object
		   // JsonObject addressObject = jsonObject.getAsJsonObject("location");
		   // JsonArray fruitsArray = jsonObject.getAsJsonArray("douments");
		  //  System.out.println("hello1");
		 //  System.out.println(fruitsArray.get(0).getAsJsonObject().remove("location"));
		   //System.out.println(fruitsArray.remove(0));
		   // addressObject.remove("city");
		  // System.out.println(jsonObject);
		    // Convert the modified JSON object back to a string
		    //String modifiedJsonString = gson.toJson(jsonObject);
		   // System.out.println(modifiedJsonString); // {"name":"John","age":30,"address":{"state":"NY"}}
		 
		 
		 
	}
	
	public static void  getRceipients(String requestbody)
	{
		
	}
	
	public static void  main(String args[])
	{
		
	}
	

}
