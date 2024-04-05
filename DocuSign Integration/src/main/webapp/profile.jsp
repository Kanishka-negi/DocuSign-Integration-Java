<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
	<title>User Profile</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
		}
		h1 {
			margin: 20px 0 40px 0;
			text-align: center;
			color: #4CAF50;
		}
		table {
			margin: auto;
			border-collapse: collapse;
			border: 1px solid #ddd;
			background-color: #fff;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		th, td {
			padding: 12px 15px;
			text-align: left;
			border-bottom: 1px solid #ddd;
		}
		th {
			background-color: #4CAF50;
			color: #fff;
		}
		tr:hover {
			background-color: #f5f5f5;
		}
		tbody tr:nth-child(even) {
			background-color: #f2f2f2;
		}
	</style>
</head>
<body>
	<h1>User Profile</h1>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile No</th>
			</tr>
		</thead>
		<tbody>
			<% 
			HttpSession session1 = request.getSession();
			String uemail = (String) session1.getAttribute("uemail");
			String upwd = (String) session1.getAttribute("upwd");
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proj", "root", "root");
				PreparedStatement stmt = con.prepareStatement("SELECT * FROM user WHERE uemail = ? AND upwd = ?");
				stmt.setString(1, uemail);
				stmt.setString(2, upwd);
				ResultSet rs = stmt.executeQuery();

				while(rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("id")%></td>
				<td><%=rs.getString("uname")%></td>
				<td><%=rs.getString("uemail")%></td>
				<td><%=rs.getString("umobile") %></td>
			</tr>
			<%
				}
				con.close();
			} catch(Exception e) {
				System.out.println(e);
			}
			%>
		</tbody>
	</table>
</body>
</html>
