<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Voting Page</title>
    <style>
        .card{
            height: 75vh;
            width: 90%;
            background-color: darkcyan;
        }
        .card:hover{
            transform: rotateY(25deg) scale(1.0);
            transition: 1s ease;
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
        .btn{
            height: 35px;
            width: 120px;
            font-size: larger;
            font-stretch: extra-condensed;
        }
    </style>
</head>
<body>
<%@include file="Header.jsp" %>
<div style="background-color: darkgrey;height: 100vh;">
        <div class="title-start">
            <h1>CDAC ELECTION <p id="year"></p></h1>
        </div>
    <div class="container mt-5 mb-5" style="text-align: center;">
        <div class="row" >
            <div class="col-lg-6 mb-4">
                <div class="card">
                    <div class="m-4">
                    <img class="card-img-top" src="https://cdn.pixabay.com/photo/2018/07/29/11/59/vote-3569999_960_720.jpg" alt="not availaible">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">VOTE FOR TL</h5>
                        
                        <div class="mb-3">
                        <a href="tlVote2" class="btn btn-primary mt-4 btn-sm">
                            VOTE
                        </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 mb-4">
                <div class="card">
                    <div class="m-4">
                    <img class="card-img-top" src="https://cdn.pixabay.com/photo/2018/07/29/11/59/vote-3569999_960_720.jpg" alt="not availaible">
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">VOTE FOR CR</h5>
                
                        <div class="mb-3">
                            <a href="CLVote" class="btn btn-primary mt-4 btn-sm">
                                VOTE
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