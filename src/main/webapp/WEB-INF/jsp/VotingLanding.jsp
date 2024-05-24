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
    <title>Document</title>
    <style>
     .table11 >
    table, th, td {
        border: 2px solid black;
        padding: 10px;
      }
      .table2 >
    table, th, td {
        border: 2px solid black;
        padding: 10px;
       
      }
      
      * {
    box-sizing: border-box;
  }
  
  /* Style the body */
  body {
    font-family: Arial, Helvetica, sans-serif;
    margin: 0;
  }
  
  /* Header/logo Title */
  .header {
    padding: 80px;
    text-align: center;
    background: #1abc9c;
    color: white;
  }
  
  /* Increase the font size of the heading */
  .header h1 {
    font-size: 40px;
  }
  
  /* Style the top navigation bar */
  .navbar {
    overflow: hidden;
    background-color: #333;
  }
  
  /* Style the navigation bar links */
  .navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
  }
  
  /* Right-aligned link */
  .navbar a.right {
    float: right;
  }
  
  /* Change color on hover */
  .navbar a:hover {
    background-color: #ddd;
    color: black;
  }
  
  /* Column container */
  .row {  
    display: -ms-flexbox; /* IE10 */
    display: flex;
    -ms-flex-wrap: wrap; /* IE10 */
    flex-wrap: wrap;
  }
  
  /* Create two unequal columns that sits next to each other */
  /* Sidebar/left column */
  .side {
    -ms-flex: 10%; /* IE10 */
    flex: 10%;
    background-color: #f5cfd9;
    padding: 20px;
  }
  
  /* Main column */
  .main {   
    -ms-flex: 70%; /* IE10 */
    flex: 70%;
    background-color: white;
    padding: 20px;
  }
  
  /* Fake image, just for this example */
  .fakeimg {
    background-color: rgb(211, 85, 85);
   
    width: 100%;
    padding: 20px;
  }
  .fakeimg2 {
    background-color: rgb(8, 29, 82);
    width: 100%;
    /* padding: 20px; */
  }
  
  /* Footer */
  .footer {
    padding: 20px;
    text-align: center;
    background: #ddd;
  }
  
  /* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
  @media screen and (max-width: 700px) {
    .row {   
      flex-direction: column;
    }
  }
  
  /* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
  @media screen and (max-width: 400px) {
    .navbar a {
      float: none;
      width: 100%;
    }
  }








  body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica,
      Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
  }
  
  .main-container {
    padding: 30px;
  }
  
  /* HEADING */
  
  .heading {
    text-align: center;
  }
  
  .heading__title {
    font-weight: 600;
  }
  
  .heading__credits {
    margin: 10px 0px;
    color: #888888;
    font-size: 25px;
    transition: all 0.5s;
  }
  
  .heading__link {
    text-decoration: none;
  }
  
  .heading_credits .heading_link {
    color: inherit;
  }
  
  /* CARDS */
  
  .cards {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
  }
  
  .card {
    margin: 20px;
    padding: 20px;
    width: 500px;
    min-height: 500px;
    display: grid;
    grid-template-rows: 20px 50px 1fr 50px;
    border-radius: 10px;
    box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.25);
    transition: all 0.2s;
  }
  
  .card:hover {
    box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.4);
    transform: scale(1.01);
  }
  
  .card__link,
  .card__exit,
  .card__icon {
    position: relative;
    min-height: 200px;
    text-decoration: none;
    color: rgba(255, 255, 255, 0.9);
  }
  .card_icon2{
    position: relative;
    min-height: 200px;
    text-decoration: none;
    color: rgba(255, 255, 255, 0.9);
   
  }
  .card__icon2 > table{
    margin-left: 120px;
  }
  .card__icon2 {
    grid-row: 2/3;
    font-size: 30px;
  }
  
  .card__link::after {
    position: absolute;
    top: 45px;
    left: 0;
    content: "";
    width: 0%;
    height: 3px;
    background-color: rgba(255, 255, 255, 0.6);
    transition: all 0.5s;
  }
  
  .card__link:hover::after {
    width: 100%;
  }
  
  .card__exit {
    grid-row: 1/2;
    justify-self: end;
  }
  
  .card__icon {
    grid-row: 2/3;
    font-size: 30px;
  }
  
  .card__title {
    grid-row: 3/4;
    font-weight: 400;
    color: #ffffff;
   
  }
  
  .card__apply {
    grid-row: 4/5; 
   align-self: center;
  }
  
  /* CARD BACKGROUNDS */
  
  .card-1 {
    background: radial-gradient(#1fe4f5, #3fbafe);
  }
  
  .card-2 {
    background: radial-gradient(#fbc1cc, #fa99b2);
  }
  
  .card-3 {
    background: radial-gradient(#76b2fe, #b69efe);
  }
  
  .card-4 {
    background: radial-gradient(#60efbc, #58d5c9);
  }
  
  .card-5 {
    background: radial-gradient(#f588d8, #c0a3e5);
  }
  
  /* RESPONSIVE */
  
  @media (max-width: 1600px) {
    .cards {
      justify-content: center;
    }
  }
  
 
      
      
    </style>
</head>
<body>
    <%@include file="Header.jsp" %>
        <div class="fakeimg" style="height:350px; background-image: url(./images/bg2.jpg);"><img src="https://www.cdac.in/index.aspx?id=img_Mumbai-cb" style="height: 250px; width: 1470px; "></div>
      
      
      <!-- <div class="navbar">
        <a href="#">Link</a>
        <a href="#">Link</a>
        <a href="#">Link</a>
        <a href="#" class="right">Link</a>
      </div> -->
      
      <div class="row">
        <div class="side" style="margin-left: 20px; ">
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
          <div class="fakeimg" style="height:60px;"><a href="/win" style=" color: white; font-size: x-large;">Results</a></div><br>
        </div>
        <div class="main" style="margin-bottom: 30px;">
            
          <p ><h1> CDAC Elections</h1></p>
          
          <h4>Elections for CR & TL of January 2023 batch are started.</h4>
          <div class="fakeimg" style="height:330px; background-color: white;"><img src="images/vote.jpg" style="margin-right:10px ;"><img src="./images/vote2.jpg" style="width: 600px; height: 300px;"></div>
          <p><h2 style="color: gold;">All The Best Students !!</h2></p>
          <p><h4>All the students who are interested to be class representative & technical lead can register on given below links. It is a big opportunity & whoever likes to take challenges can apply to take the responsibility of being a CR & TL.</h4></p>
          <div>
          
          <div id="demo" class="fakeimg2" style="height:50px;"> <p id="home_page"><h1><a href="/CRRegistration" style="color:white;">REGISTER FOR "CR" CANDIDATE </a></h1></p></div><br>
          
         
          <div id="demo2" class="fakeimg2" style="height:50px;"> <p id="home_page2"><h1><a href="/TLRegistration" style="color: white;">REGISTER FOR "TL" CANDIDATE </a></h1></p></div><br>
          
          </div>
          <br>
          <!-- <h1>The Eligible Candidates for CR are :</h1>
          <h5>Title description, Sep 2, 2017</h5> -->
          
          <!-- <div class="fakeimg" style="height:200px;">Image</div> -->
          <div class="main-container" >
          <div  id="root" style="font-size: xx-large;; color: red;"></div>
            <div class="heading">
              <h1 class="heading__title">The Eligible Candidates for CR are :</h1>
              <p class="heading_credits"><a class="heading_link" target="_blank" href="StudentLogin">Voting lines will be open till 10 January 2023, 12:00:00ST</a><div  id="root" style="font-size: larger; color: red;"></div></p>
            </div>
            <div class="cards">
              <div class="card card-1">
                <div class="card__icon" ><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                    <table class="table11" style = " border: 2px solid black;
        padding: 10px;">
                        <thead>
                            <tr>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
                 
                <h2 class="card__title"></h2>
                <p class="card__apply">
                  <a class="card__link" href="StudentLogin" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                </p>
              </div>
              <div class="card card-2">
                <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                    <table class="table11" style="border: 2px solid black;
        padding: 10px;">
                        <thead>
                            <tr>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
                 
                <h2 class="card__title"></h2>
                <p class="card__apply">
                    <a class="card__link" href="StudentLogin" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                </p>
              </div>
              <div class="card card-3" style="min-height: 200px;" >
                <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"><i class=""></i>
                    <table class="table11">
                        <thead>
                            <tr>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
                
                <h2 class="card__title"></h2>
                <p class="card__apply">
                    <a class="card__link" href="StudentLogin" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                </p>
              </div>
              <div class="card card-4">
                <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                    <table class="table11">
                        <thead>
                            <tr>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
                 
                <h2 class="card__title"></h2>
                <p class="card__apply">
                    <a class="card__link" href="StudentLogin" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                </p>
              </div>
              <!-- <div class="card card-5">
                <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                    <table class="table11">
                        <thead>
                            <tr>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
                 
                <h2 class="card__title"></h2>
                <p class="card__apply">
                    <a class="card__link" href="#" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                </p>
              </div> -->
              <!-- <div class="card card-1">
                <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                    <table class="table11">
                        <thead>
                            <tr>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                              <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                               
                            </tr>
                        </tbody>
                    </table>
                </div>
                 
                <h2 class="card__title"></h2>
                <p class="card__apply">
                    <a class="card__link" href="#" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                </p>
              </div> -->
            </div>
          </div>

            <!-- <div class="fakeimg" style="height:200px;">Image</div> -->
            <div class="main-container">
                <div class="heading">
                  <h1 class="heading__title">The Eligible Candidates for TL are :</h1>
                  <p class="heading_credits"><a class="heading_link" target="_blank" href="StudentLogin">Voting lines will be open till 10 January 2023, 12:00:00ST</a><div  id="root" style="font-size: larger; color: red;"></div></p>
                </div>
                <div class="cards">
                  <div class="card card-1">
                    <div class="card__icon" ><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                        <table class="table11">
                            <thead>
                                <tr>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                                   
                                </tr>
                            </tbody>
                        </table>
                    </div>
                     
                    <h2 class="card__title"></h2>
                    <p class="card__apply">
                      <a class="card__link" href="StudentLogin" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                    </p>
                  </div>
                  <div class="card card-2">
                    <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                        <table class="table11">
                            <thead>
                                <tr>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                                   
                                </tr>
                            </tbody>
                        </table>
                    </div>
                     
                    <h2 class="card__title"></h2>
                    <p class="card__apply">
                        <a class="card__link" href="StudentLogin" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                    </p>
                  </div>
                  <div class="card card-3">
                    <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                        <table class="table11">
                            <thead>
                                <tr>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                                   
                                </tr>
                            </tbody>
                        </table>
                    </div>
                     
                    <h2 class="card__title"></h2>
                    <p class="card__apply">
                        <a class="card__link" href="StudentLogin" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                    </p>
                  </div>
                  <div class="card card-4">
                    <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                        <table class="table11">
                            <thead>
                                <tr>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                                   
                                </tr>
                            </tbody>
                        </table>
                    </div>
                     
                    <h2 class="card__title"></h2>
                    <p class="card__apply">
                        <a class="card__link" href="StudentLogin" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                    </p>
                  </div>
                  <!-- <div class="card card-5">
                    <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                        <table class="table11">
                            <thead>
                                <tr>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                                   
                                </tr>
                            </tbody>
                        </table>
                    </div>
                     
                    <h2 class="card__title"></h2>
                    <p class="card__apply">
                        <a class="card__link" href="#" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                    </p>
                  </div> -->
                  <!-- <div class="card card-1">
                    <div class="card__icon"><img src="./images/student.jpg" alt="Avatar" style="width:250px; height: 250px;  margin-left:100px ;"> 
                        <table class="table11">
                            <thead>
                                <tr>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Name</th>
                                  <th style="color: black; border: 2px solid black;
        padding: 10px;">Slogan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Ankita</td>
                                    <td style="color: rgb(49, 8, 161); border: 2px solid black;
        padding: 10px;">Vote for me i am best</td>
                                   
                                </tr>
                            </tbody>
                        </table>
                    </div>
                     
                    <h2 class="card__title"></h2>
                    <p class="card__apply">
                        <a class="card__link" href="#" style="font-size: 25px; color: rgb(248, 31, 15);">Vote Now <i class="fas fa-arrow-right"></i></a>
                    </p>
                  </div> -->
                </div>
              </div>
        
          <!--gapp  -->
          
          <!-- <h1>Live Voting upto 30 January 2023, 12:00:00ST</h1> -->
          <!-- <h4>Every vote matters</h4> -->
        
          
          <p><h2>Every vote matters...so keep voting students, & lets achieve 100% voting!!</h2></p>

          <div>
            <a href="/win" style="color:rgb(81, 224, 123) ;"> <h1>The Results of CR & TL elections are out..!! Check out here..</h1></a>
          </div>

        </div>
        
        
      </div>
     
     
</body>

<script>
// Set the date we're counting down to
var countDownDate = new Date("Jan 12, 2023 23:59:59").getTime();


//let url = new URL('https://google.com');
let myId = document.getElementById('home_page')
  //var myId = document.getElementById.innerHTML('home_page')
    //  let root = document.getElementById('root')
 // let href = document.querySelector('a').a.href;

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();
    
  // Find the distance between now and the count down date
  var distance = countDownDate - now;
    
  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
  // Output the result in an element with id="demo"
  document.getElementById("demo").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s "  ;

  // If the count down is over, write some text 
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = `<p id="home_page"><h1 style="color: white;">Link Expired</h1></p>`;
    document.getElementById("root").innerHTML = "";
    document.getElementById("demo2").innerHTML = `<p id="home_page2"><h1 style="color: white;">Link Expired</h1></p>`;
    document.getElementById("root").innerHTML = "";
  }
  if(distance > 0){
   document.getElementById("demo").innerHTML =`<p id="home_page"><h1><a href="/CRRegistration" style="color: white;">REGISTER FOR "CR" CANDIDATE </a></h1></p>`;


 document.getElementById("root").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s "  ;
  }
 
  
}, 1000);
</script>



</html>

