package com.uniquedeveloper.registration;


import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
		/*//System.out.println("hello");
		URL url = new URL("http://127.0.0.1/ConvertService.ashx");
        HttpURLConnection httpConn = (HttpURLConnection) url.openConnection();
        httpConn.setRequestMethod("POST");
        httpConn.setRequestProperty("Content-Type", "application/json");
        httpConn.setRequestProperty("Accept", "application/json");
        httpConn.setRequestProperty("Host", "127.0.0.1");
        httpConn.setRequestProperty("Authorization", "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhc3luYyI6ZmFsc2UsImZpbGV0eXBlIjoiZG9jeCIsIm91dHB1dHR5cGUiOiJwZGYiLCJ0aXRsZSI6Ik15RG9jdW1lbnQucGRmIiwia2V5Ijoic2ZhZmFmZGRmc2ZmIiwidXJsIjoiaHR0cHM6Ly9jYWxpYnJlLWVib29rLmNvbS9kb3dubG9hZHMvZGVtb3MvZGVtby5kb2N4In0.XX0vhZdLHyEuL4yV3i3qsysxS5y-PxVpNy2pwfw2oVM");
        httpConn.setDoOutput(true);
        OutputStreamWriter writer = new OutputStreamWriter(httpConn.getOutputStream());
        writer.write("{\n    \"async\":false,\n    \"filetype\": \"docx\",\n    \"outputtype\": \"pdf\",\n    \"title\": \"MyDocument.pdf\",\n    \"key\": \"sfafafddfsff\",\n    \"url\": \"https://calibre-ebook.com/downloads/demos/demo.docx\"\n}");
        writer.flush();
        writer.close();
        httpConn.getOutputStream().close();
        InputStream responseStream = httpConn.getResponseCode() / 100 == 2
                ? httpConn.getInputStream()
                : httpConn.getErrorStream();
        Scanner s = new Scanner(responseStream).useDelimiter("\\A");
        String responseString = s.hasNext() ? s.next() : "";
        response.getWriter().write(responseString); */


String url1 = request.getParameter("CallURL");
System.out.println(url1);
String str = "http://localhost/example/editor?fileName=" + url1;
	if (str!= null && !str.isEmpty()) {
		response.sendRedirect(str);
	} else {
		response.getWriter().println("Invalid URL");
	}
	
	
	
	}

}
