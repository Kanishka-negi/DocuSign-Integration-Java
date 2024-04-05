 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import= "docusignapiclasses.SentDocuments, java.util.ArrayList,docusignapiclasses.DocumentInfo ,docusignapiclasses.DocusignCredentials"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        #tablecontainer{
          
           display: flex;
           align-items: center;
           justify-content: center;
           background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
           /by just setting the width of div container it cannot be displaye  height:  also needs tonbe set;/ 
            height: 100vh;
        }
        table {
            background-color: rgb(253, 250, 252);
            height: 100%;
            border: 2px solid black;
            border-collapse: collapse;
            width: 100%;
        }

        thead {
            background-color: rgb(32, 134, 249);
        }  
        tbody {
        
       
        }
        tbody tr {
       
         width :20px;
         height:30px;
        }
        td, th {
            border: 1px solid black;
            text-align: center;
            padding: 8px;
       }



        th,
        td,
        tr {
            border: 1px solid black;
            text-align: center;
            padding: 8px;

        }

        td {
            height: 100%;
            vertical-align: top;

        }
        ul li {
           list-style-type: none;
         }
  
  
      </style>
     <title>Insert title here</title>
      </head>
       <body>

       <div id="tablecontainer">
        <table>
            <thead>
              <tr>
                <th>Document Name</th>
                <th>Document Type</th>
                <th>Recipients Name</th>
                <th>Recipients Email</th>
                <th>Status</th>
              </tr>
            </thead>
            <tbody>
               <%

   
     // String  AccessCode=DocusignCredentials.getAccessToken("","");
      //String account_id=DocusignCredentials.getAccountId("","");
      String accesstoken="eyJ0eXAiOiJNVCIsImFsZyI6IlJTMjU2Iiwia2lkIjoiNjgxODVmZjEtNGU1MS00Y2U5LWFmMWMtNjg5ODEyMjAzMzE3In0.AQoAAAABAAUABwAAEblIYCvbSAgAAFHcVqMr20gCAG_UphyvguNLm_CkVRd3QrUVAAEAAAAYAAEAAAAFAAAADQAkAAAAMGM0Y2RlOWEtMzMwOS00ODIyLTk3ZjUtMmZiMWNjYTQ2OWRkIgAkAAAAMGM0Y2RlOWEtMzMwOS00ODIyLTk3ZjUtMmZiMWNjYTQ2OWRkMAAA7jwiiCPbSDcAF05KdhLE7kaZ8Oz8PBlaCA.SsrLdEP1ULiLAC8kYIYWnUDbvfp582VIA2lwA4MzNUm9MlgWDY7xLFP6B1JiLDsXETAfJsF31upHkUccqV95Mk4UIPE-i7-C7PMa6QrzapII8i9MY080fsZ89S3eAh9EvFJETQ-bFU7hRl-Jzlux3OgcAtIGA6jv_SZCfMKnrsD4JlAUN5tYIIpkQ8_eq_CqwfS6ABrKrQYFhEQPugBZQXu6Rz7zsbbd5KZcn7ORcmIMLrP4y0M-Zyx5dAsSdHPdDOHvx1r3pOgkDMjA3OYrVrSVnTMvWet07XAvdy1HgWdDT4CUbUmcCoJimRbQZ-PojQCdSeu4dT5eC7gDYC4wug";
	  String  accountid="cbb9c40f-aaa4-43e7-9a32-5ad4b75fb881";
	
		//String genvelopeid1="b404f08e-b6b1-4d36-a873-6c97859d62a3";
     
      ArrayList<DocumentInfo> documentlist=SentDocuments.getInfoFromDtabase(accesstoken,accountid);
      System.out.println(documentlist);
     for(int dl=0; dl<documentlist.size(); dl++)
     {%>
	   <tr>
	   <td><%=documentlist.get(dl).documentname %></td>
	   <td><%= documentlist.get(dl).documenttype%></td>	
	   <td>
	    <ul>  
	   <% for(int rl=0; rl<documentlist.get(dl).rcarry.size();rl++){
	   %> 
	       <li><%=documentlist.get(dl).rcarry.get(rl).name%></li>
	           
	   <%} %>
	    </ul>
	   </td>
	   <td>
	    <ul>  
	   <% for(int rl=0; rl<documentlist.get(dl).rcarry.size();rl++){
	   %> 
	       <li><%=documentlist.get(dl).rcarry.get(rl).email%></li>
	       	     
	   <%} %>
	      
	    </ul>
	   </td>
	   
	   	   <td>
	    <ul>  
	   <% for(int rl=0; rl<documentlist.get(dl).rcarry.size();rl++){
	   %> 
	       <li><%=documentlist.get(dl).rcarry.get(rl).status%></li>
	       	     
	   <%} %>
	      
	    </ul>
	   </td>	   
	   </tr>
	      	    
   	<%   	   
  } 
     %>
           </tbody>
          </table>
          
    </div>
</body>
</html>