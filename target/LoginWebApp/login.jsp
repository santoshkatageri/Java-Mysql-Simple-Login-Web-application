<%@ page import="java.sql.*"%>

<%
 String userName = request.getParameter("userName"); 
 String password = request.getParameter("password"); 
 Class.forName ( "com.mysql.jdbc.Driver"); 
 Connection con = DriverManager.getConnection("jdbc:mysql://54.201.111.228:3306/logindb", "root", "root123");
 Statement st = con.createStatement(); 
 ResultSet rs; 
 rs = st.executeQuery("select * from user where username='" + userName + "' and password='" + password + "'");
	if (rs.next()) 
		{ 
			session.setAttribute("userid", userName); 
			response.sendRedirect("success.jsp"); 
		} 
	else 
		{ 
			out.println("Invalid password <a href='index.jsp'>try again</a>"); 
} 
%>
