
<%@page import="com.election.model.Student"%>
<% Student stobj = (Student)session.getAttribute("studentloginsession"); %>

<%@page import="com.election.model.TLVote"%>
<%@page import="java.util.List"%>

<%
    	TLVote lst = (TLVote)request.getAttribute("tlwinn");
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/VotingLanding.css">
    <link rel="stylesheet" href="static/Result.css">
    <title>Document</title>
    <style >
    .table1 >
    table, th, td {
        border: 2px solid black;
        padding: 10px;
      }
      .table2 >
    table, th, td {
        border: 2px solid black;
        padding: 10px;
       
      }
      
    </style>
</head>
<body>
    <%--@include file="Header.jsp" --%>
        <div class="fakeimg" style="height:350px; background-image: url(./images/bg2.jpg);"><img src="https://www.cdac.in/index.aspx?id=img_Mumbai-cb" style="height: 250px; width: 1470px; "></div>
      
      
      <!-- <div class="navbar">
        <a href="#">Link</a>
        <a href="#">Link</a>
        <a href="#">Link</a>
        <a href="#" class="right">Link</a>
      </div> -->
      
      <div class="row">
        <div class="side">
          <h2>IMPORTANT LINKS</h2>
           <!-- <h5>Photo of me:</h5>
          <div class="fakeimg" style="height:200px;">Image</div>
          <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
          <h3>More Text</h3> 
          <p>Lorem ipsum dolor sit ame.</p> -->
          <div class="fakeimg" style="height:60px; "><a href="Home" style=" color: white; font-size: x-large;">Home</a></div><br/>
          <div class="fakeimg" style="height:60px;"><a href="StudentLogin" style=" color: white; font-size: x-large;">Login</a></div><br/>
          <div class="fakeimg" style="height:60px;"><a href="Student_Register" style=" color: white; font-size: x-large;">Register</a></div><br/>
          <div class="fakeimg" style="height:60px;"><a href="Home" style=" color: white; font-size: x-large;">Gallery</a></div><br>
          
        </div>
        <div class="main">
            <div class="congrats"><img   src="./images/congrats.gif"></div>
          <p ><h2> TL Elections Results are : </h2></p>
          
         
          <div class="main-container">
            <div class="heading">
              <h1 class="heading__title">The Elected TL for January bath is: </h1>
              
              <p class="heading_credits"><a class="heading_link" target="_blank" href="https://dribbble.com/sl">Voting lines will be open till 10 January 2023, 12:00:00ST</a></p>
            </div>
            <div class="cards">
              <div class="card card-1">
                <div class="card__icon3" ><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"><i class=""></i>
                    <table class="table1" style="border-style: solid; border-radius: 5px;  margin-left: 100px;">
                        <thead>
                            <tr>
                              <th style="color: black;border-style: solid; border-radius: 5px;">Name</th>
                              <th style="color: black;border-style: solid; border-radius: 5px;">Votes</th>
                         
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="color: rgb(49, 8, 161);border-style: solid; border-radius: 5px;"><%=lst.getFirst_name() %> <%=lst.getLast_name() %></td>
                               <td style="color: rgb(49, 8, 161);border-style: solid; border-radius: 5px;"> <%=lst.getVote() %> </td>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="card__exit"><i class="fas fa-times"></i></p>
                <h2 class="card__title"></h2>
               
            </div>
            
          </div>
         
            <!-- <div class="fakeimg" style="height:200px;">Image</div> -->
            <p ><h2> CR Elections Results are : </h2></p>
          
         
            <div class="main-container">
              <div class="heading">
                <h1 class="heading__title">The Elected CR for January bath is: </h1>
                <p class="heading_credits"><a class="heading_link" target="_blank" href="https://dribbble.com/sl">Voting lines will be open till 10 January 2023, 12:00:00ST</a></p>
              </div>
              <div class="cards">
                <div class="card card-1">
                  <div class="card__icon3" ><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"><i class="fas fa-bolt"></i>
                      <table class="table1" style="border-style: solid; border-radius: 5px; margin-left: 100px;">
                          <thead>
                              <tr>
                                <th style="color: black; border-style: solid; border-radius: 5px;">Name</th>
                                <th style="color: black;border-style: solid; border-radius: 5px;">Votes</th>
                                
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td style="color: rgb(49, 8, 161); border-style: solid; border-radius: 5px;">Sahil Kurale</td>
                                  <td style="color: rgb(49, 8, 161); border-style: solid; border-radius: 5px;">7</td>
                                 
                              </tr>
                          </tbody>
                      </table>
                  </div>
                  <p class="card__exit"><i class="fas fa-times"></i></p>
                  <h2 class="card__title"></h2>
                 
              </div>
            </div>
  

    

        </div>
        
        
      </div>
      <%--@include file="Footer.jsp" --%>
     
</body>
</html>