<%--@page import="com.election.model.Admin" --%>
<%-- Admin adobj = (Admin)session.getAttribute("adminloginsession"); --%>



<%@page import="com.election.model.CommunicationLead"%>
<%@page import="com.election.model.TechnicalLead"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%
    	List<TechnicalLead> lst = (List<TechnicalLead>)request.getAttribute("tls");
    %>
    
      <%
    	List<CommunicationLead> lst2 = (List<CommunicationLead>)request.getAttribute("cls");
    %>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<style type="text/css">
*{
    list-style: none;
    text-decoration: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
}

body{
    background: #f5f6fa;
}

.wrapper .sidebar{
    background: rgb(5, 68, 104);
    position: fixed;
    top: 0;
    left: 0;
    width: 225px;
    height: 100%;
    padding: 20px 0;
    transition: all 0.5s ease;
}
.wrapper .sidebar .profile{
    margin-bottom: 30px;
    text-align: center;
}

.wrapper .sidebar .profile img{
    display: block;
    width: 100px;
    height: 100px;
    
    margin: 0 auto;
}

.wrapper .sidebar .profile h3{
    color: #ffffff;
    margin: 10px 0 5px;
}

.wrapper .sidebar .profile p{
    color: rgb(206, 240, 253);
    font-size: 14px;
}
.wrapper .sidebar ul li a{
    display: block;
    padding: 13px 30px;
    border-bottom: 1px solid #10558d;
    color: rgb(241, 237, 237);
    font-size: 16px;
    position: relative;
}

.wrapper .sidebar ul li a .icon{
    color: #dee4ec;
    width: 30px;
    display: inline-block;
}

.wrapper .sidebar ul li a:hover,
.wrapper .sidebar ul li a.active{
    color: #0c7db1;

    background:white;
    border-right: 2px solid rgb(5, 68, 104);
}

.wrapper .sidebar ul li a:hover .icon,
.wrapper .sidebar ul li a.active .icon{
    color: #0c7db1;
}

.wrapper .sidebar ul li a:hover:before,
.wrapper .sidebar ul li a.active:before{
    display: block;
}
.wrapper .section{
    width: calc(100% - 225px);
    margin-left: 225px;
    transition: all 0.5s ease;
}

.wrapper .section .top_navbar{
    background: rgb(7, 105, 185);
    height: 50px;
    display: flex;
    align-items: center;
    padding: 0 30px;

}

.wrapper .section .top_navbar .hamburger a{
    font-size: 28px;
    color: #f4fbff;
}

.wrapper .section .top_navbar .hamburger a:hover{
    color: #a2ecff;
}
body.active .wrapper .sidebar{
    left: -225px;
}

body.active .wrapper .section{
    margin-left: 0;
    width: 100%;
}

.tableTL{
	margin-left: 350px;
	margin-top: 100px;
	margin-bottom: 100px;
}
table,th,td{
	border-style: solid;
	border-radius: 5px;
}


#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}

</style>
<script type="text/javascript">
var hamburger = document.querySelector(".hamburger");
hamburger.addEventListener("click", function(){
    document.querySelector("body").classList.toggle("active");
})
</script>
<script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>

</head>
<body>
<%@include file="Header.jsp" %>
<div class="wrapper">
        <div class="section">
            <div class="top_navbar">
                <div class="hamburger">
                    <a href="#">
                        <i class="fas fa-bars"></i>
                    </a>
                </div>
            </div>

        </div>
        <div class="sidebar">
           <div class="profile">
                <img src="https://cdac.in/img/C-DAC.jpg">
               
            </div>
            <ul>
                <li>
                    <a href="Home" class="active">
                        <span class="icon"><i class="fas fa-home"></i></span>
                        <span class="item">Home</span>
                    </a>
                </li>
                <li>
                    <a href="AProfile">
                        <span class="icon"><i class="fas fa-desktop"></i></span>
                        <span class="item">My Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="Home">
                        <span class="icon"><i class="fas fa-user-friends"></i></span>
                        <span class="item">Important Link</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-tachometer-alt"></i></span>
                        <span class="item">Perfomance</span>
                    </a>
                </li>
              
                <li>
                    <a href="#">
                        <span class="icon"><i class="fas fa-chart-line"></i></span>
                        <span class="item">Reports</span>
                    </a>
                </li>
                <li>
                    <a href="AProfile">
                        <span class="icon"><i class="fas fa-user-shield"></i></span>
                        <span class="item">Admin Profile</span>
                    </a>
                </li>
      
            </ul>
        </div>
        </div>
		
		<div class="tableTL ">
		<h2>Technical Lead Candidates</h2>
			<table id="customers" class="sortable">
				<thead>
					<tr class = "item">
					<th>id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Gender</th>
					<th>Branch</th>
					<th>Phone</th>
					<th>Email</th>
					<th>Image</th>
					<th>Update</th>
					<th>Delete</th>
					<th>Select</th>
					</tr>
				</thead>
				<tbody>
				<%for(TechnicalLead tl : lst){ %>
					<tr>
						<td><%=tl.getId()%></td>
						<td><%=tl.getFirst_name()%></td>
						<td><%=tl.getLast_name() %></td>
						<td><%=tl.getGender() %></td>
						<td><%=tl.getBranch() %></td>
						<td><%=tl.getPhone() %></td>
						<td><%=tl.getEmail() %></td>
						<td><img alt="no image" src="images/<%=tl.getImage()%>" width="50" height="50"></td>
						<td><a href="updateTL/<%=tl.getId()%>" >Update</a></td>
						<td><a href="deleteTL/<%=tl.getId()%>" >Delete</a></td>
						<td><a href="selectTL/<%=tl.getId()%>" >Select</a></td>
					</tr>
					<% } %>
				</tbody>
			</table>
		</div>
    	
    	<div class="tableTL">
    	<h2>Communication Lead Candidates</h2>
			<table id="customers" class="sortable">
				<thead>
					<tr class = "item">
					<th>id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Gender</th>
					<th>Branch</th>
					<th>Phone</th>
					<th>Email</th>
					<th>Image</th>
					<th>Update</th>
					<th>Delete</th>
					</tr>
				</thead>
				<tbody>
				<%for(CommunicationLead cl : lst2){ %>
					<tr>
						<td><%=cl.getId()%></td>
						<td><%=cl.getFirst_name()%></td>
						<td><%=cl.getLast_name() %></td>
						<td><%=cl.getGender() %></td>
						<td><%=cl.getBranch() %></td>
						<td><%=cl.getPhone() %></td>
						<td><%=cl.getEmail() %></td>
						<td><img alt="no image" src="images/<%=cl.getImage()%>" width="50" height="50"></td>
						<td><a href="updateTL/<%=cl.getId()%>" >Update</a></td>
						<td><a href="deleteTL/<%=cl.getId()%>" >Delete</a></td>
					</tr>
					<% } %>
				</tbody>
			</table>
		</div>
    	
    	
    
    
</body>
</html>