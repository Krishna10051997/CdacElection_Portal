


<%@page import="com.election.model.TLVote"%>
<%@page import="com.election.model.Student"%>
<%@page import="java.util.List"%>
<% Student stobj = (Student)session.getAttribute("studentloginsession"); %>
<%
    	List<TLVote> lst = (List<TLVote>)request.getAttribute("tvls");
    %>
   

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Voting CL</title>
    <style>

        .card{
            height: 75vh;
            width: 90%;
            background-color: rgb(227, 224, 211);
        }
        .card:hover{
            transform: scale(1.1);
            box-shadow: 2px 2px 2px #000;
            transition: 0.7s ease;
        }
        .card-title{
            font-size: 2vw;
            color: brown;
        }
        .title-start{
            height: 10vh;
            text-align: center;
            color: brown;
            font-style: oblique;
        }
        .m-4{
          
            height: 50%;
        }
         .mb-5{
        margin-left: 370px;
        }
        .card-img-top{
            height: 100%;
        }
        .btn{
            height: 50px;
            width: 150px;
            text-align: center;
            font-size: 20px;
        }
        .btn:hover{
            background-color: black;
        }
        .vcl{
            background-color: rgb(212, 203, 163);
            height: 100vh;
        }
    </style>
</head>
<body>
<%@include file="Header.jsp" %>

<div class="vcl">
    <div class="container mt-5 mb-5" style="text-align: center;">
        <div class="row" >
        <% for(TLVote tlv : lst){ %>
            <div class="col-lg-4 mb-4">
                <div class="card" style="height: 72vh;">
                    <div class="m-4">
                    <img class="card-img-top" src="./images/student.jpg" style="width:250px; height: 250px;" alt="">
                    </div>
                    
                    <div class="card-body">
                        <h5 class="card-title"><%=tlv.getFirst_name()%> <%=tlv.getLast_name() %></h5>
                        <p class="card-text">
                            Some quick example text to build on 
                            the card title and make up the bulk 
                            of the card's content.
                        </p>
                        
                         <%  if(stobj.getHasVoted().equals("No") ){ %>
                         <div>
                     
                         </div>
                        <div class="mb-3">
                        <a href="/vote/<%=tlv.getId() %>" class="btn btn-primary btn-sm">
                            CASTE VOTE
                        </a>
                        </div>
                            <%} else {%>   
                            <div class="mb-3">
                       <a class="btn btn-primary btn-sm">
                            Already Voted
                        </a>
                        
                        </div>
                        <%  } %>
                    </div>
                </div>
            </div>
<% } %>
            
        </div>
    </div>
</div>

<section >
<form action="" method ="post" name="tlupdate" id="tl2">
<div class="form-outline mb-4">
                    <label class="form-label" >Candidate1</label>
                  <input type="text" id="form3Example1cg" name="fname" class="form-control form-control-lg" />
                  <label class="form-label" for="form3Example1cg" id="fname" style="color: red;"></label>
                </div>

</form>

</section>

</body>
</html>