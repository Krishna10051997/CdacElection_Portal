
<%@page import="com.election.model.Student"%>
<% Student stobj = (Student)session.getAttribute("studentloginsession"); %>

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
            <div class="col-lg-4 mb-4">
                <div class="card" style="height: 72vh;">
                    <div class="m-4">
                    <img class="card-img-top" src="Suyash.png" alt="">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Ankita Sonawane</h5>
                        <p class="card-text">
                            
                        </p>
                        <div class="mb-3">
                        <a href="/win" class="btn btn-primary btn-sm">
                            CASTE VOTE
                        </a>
                        </div>
                    </div>
                </div>
            </div>
            

            <div class="col-lg-4 mb-4">
                <div class="card" style="height: 72vh;">
                    <div class="m-4">
                    <img class="card-img-top" src="Sahil.png" alt="">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Sahil Kurale</h5>
                        <p class="card-text">
                           
                        </p>
                        
                        <div class="mb-3">
                            <a href="/win" class="btn btn-primary btn-sm">
                                CASTE VOTE
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>