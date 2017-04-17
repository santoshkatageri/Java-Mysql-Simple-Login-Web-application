<%@ page import="java.sql.*"%>

<%
 String userName = request.getParameter("uname"); 
 String password = request.getParameter("password"); 
 Class.forName ( "com.mysql.jdbc.Driver"); 
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/logindb", "root", "nuqom15en");
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