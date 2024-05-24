<%@page import="com.election.model.Student"%>
<% Student stobj = (Student)session.getAttribute("studentloginsession"); %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<style type="text/css">
body {

    background: #67B26F;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #4ca2cd, #67B26F);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #4ca2cd, #67B26F); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    padding: 0;
    margin: 0;
    font-family: 'Lato', sans-serif;
    color: #000;
}
.student-profile .card {
    border-radius: 10px;
    
}
.student-profile .card .card-header .profile_img {
    width: 150px;
    height: 150px;
    object-fit: cover;
    margin: 10px auto;
    border: 10px solid #ccc;
    border-radius: 50%;
}
.student-profile .card h3 {
    font-size: 20px;
    font-weight: 700;
}
.student-profile .card p {
    font-size: 16px;
    color: #000;
}
.student-profile .table th,
.student-profile .table td {
    font-size: 14px;
    padding: 5px 10px;
    color: #000;
}
</style>
</head>
<body>
<%@include file="Header.jsp" %>
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm" >
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="./images/student.jpg" alt="student dp" style="display: flex;justify-content: centre;align-content: center;">
            <h3 style="padding-left: 45%">shubham bal</h3>
          </div>
          <div class="card-body">
            <p class="mb-0" style="display: flex;justify-content: centre;align-content: center;center;padding-left: 45%"><strong class="pr-1">Student ID:</strong>321000001</p>
            <p class="mb-0"style="display: flex;justify-content: centre;align-content: center;center;padding-left: 45%"><strong class="pr-1">Batch</strong>Sep-22</p>
            <p class="mb-0"><strong class="pr-1"></strong></p>
          </div>
        </div>
      </div>
      <div class="col-lg-8" style="display: flex;justify-content: centre;align-content: center;padding-left: 45%">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">Roll</th>
                <td width="2%">:</td>
                <td>125</td>
              </tr>
              <tr>
                <th width="30%">Academic Year	</th>
                <td width="2%">:</td>
                <td>2022</td>
              </tr>
              <tr>
                <th width="30%">Gender</th>
                <td width="2%">:</td>
                <td>Male</td>
              </tr>
              <tr>
                <th width="30%">Religion</th>
                <td width="2%">:</td>
                <td>Group</td>
              </tr>
              <tr>
                <th width="30%">blood</th>
                <td width="2%">:</td>
                <td>B+</td>
              </tr>
            </table>
          </div>
        </div>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i></h3>
          </div>
          <div class="card-body pt-0">
             
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>