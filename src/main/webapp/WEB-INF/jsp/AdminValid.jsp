
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% 
	String unm = request.getParameter("uname");
	String pass = request.getParameter("upass");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/election_admin","root","sept22");
	PreparedStatement s = con.prepareStatement("select * from admin where uname=? and upass=?");
	s.setString(1, unm);
	s.setString(2, pass);
	ResultSet rs = s.executeQuery();
	
	boolean flag = false;
	if(rs.next()){
		flag = true;
	}
	s.close();
	con.close();
	if(flag){
		response.sendRedirect("VotingMainPage.jsp");
	}
	else{
		response.sendRedirect("AdminLogin.jsp?msg=Invalid credentials!");
	}

%>