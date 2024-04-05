package jsonfilterclases;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonArray;

public class GetRsponseAttribute {

public static String getEnvelopeId(String response )
{
   Gson gson = new Gson();
   JsonObject jsonObject = gson.fromJson(response, JsonObject.class);
   String evid= jsonObject.get("envelopeId").toString();
   return evid;	
}

public static String getStatus(String response)
{
   Gson gson = new Gson();
   JsonObject jsonObject = gson.fromJson(response, JsonObject.class);
   String status=jsonObject.get("status").toString();
   return status;
	
}


}



/*public class JsonBodyFilter {
	
	
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
		   // System.out.println("hello1");
		   // System.out.println(documentsarray.get(0).getAsJsonObject().remove("location"));
		   //System.out.println(fruitsArray.remove(0));
		   // addressObject.remove("city");
		   // System.out.println(jsonObject.toString());
		 return jsonObject.toString();
	}
	
	

}*/
