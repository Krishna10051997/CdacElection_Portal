<%@page import="com.election.model.Student"%>
<% Student stobj = (Student)session.getAttribute("studentloginsession"); %>


<!DOCTYPE html>
<html>
<head>
 
<title>Homepage</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
   <link rel="stylesheet" href="static/Home.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>     
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
    width: 1200px;
    height:580px;
    margin: auto;
   
  }
  .container {
    width:120%;
    height:650px Fixed;
    /* background-image: url(./images/bg2.jpg); */
    
    /* background-color:  #1b4b6c; */
    /* border-style: solid; */
    /* border-color: rgb(249, 249, 254); */
    
    
}
/* .carousel-inner{
    background-color:   #fbfbfb;
    border-style: solid;
    border-radius: 5%;
    color: rgb(147, 142, 142);
    
    padding: 50px;
} */
.s1{
    
    background-image: url(./images/bg2.jpg);
    color:  #1b4b6c;
}
.pt-5{
    margin-bottom: 100px;
}
.card{
    min-height: 150px;
}
.card > img{
    align-content: center;
   justify-content: center;
   margin-top: 10px;
}
  </style>
</head>
<body>
<%@include file="Header.jsp" %>
<div class="container s1">

  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="s1">
    <div class="carousel-inner " role="listbox" >

      <div class="item active">
        <img src="./images/C-DAC.jpg" alt="" width="460" height="345">
        <div class="carousel-caption">
      
        </div>
      </div>

      <div class="item">
        <img src="./images/khbuil.jpg" alt="" width="460" height="345">
        <div class="carousel-caption">
          
        </div>
      </div>
    
      <div class="item">
        <img src="./images/C-DAC.jpg" alt="" width="460" height="345">
        <div class="carousel-caption">
         
        </div>
      </div>

      <div class="item">
        <img src="./images/khbuil.jpg" alt="" width="460" height="345">
        <div class="carousel-caption">
         
        </div>
      </div>
  
    </div>
</div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<section>
          <div class="announcement">
            <div class="speaker">
              <h3>
                ANNOUNCEMENTS <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-megaphone-fill" viewBox="0 0 16 16">
  <path d="M13 2.5a1.5 1.5 0 0 1 3 0v11a1.5 1.5 0 0 1-3 0v-11zm-1 .724c-2.067.95-4.539 1.481-7 1.656v6.237a25.222 25.222 0 0 1 1.088.085c2.053.204 4.038.668 5.912 1.56V3.224zm-8 7.841V4.934c-.68.027-1.399.043-2.008.053A2.02 2.02 0 0 0 0 7v2c0 1.106.896 1.996 1.994 2.009a68.14 68.14 0 0 1 .496.008 64 64 0 0 1 1.51.048zm1.39 1.081c.285.021.569.047.85.078l.253 1.69a1 1 0 0 1-.983 1.187h-.548a1 1 0 0 1-.916-.599l-1.314-2.48a65.81 65.81 0 0 1 1.692.064c.327.017.65.037.966.06z"/>
</svg>
              </h3>
            </div>
            <div class="alink">
              <ul class="bullet">
                <marquee direction="left"  behavior="scroll" scrollamount="20">
                  
                    <li>
                      <a href="Voting"><blink class="blink">
                        Elections for CR & TL are to be held on 7th-Jan-2023
                        interested candidates can apply</blink>
                      </a>
                   
                    </li>
                  

                 
                    <li>
                      <a href="/win">
                        <blink class="blink">  Result of CR & TL elections are declared</blink>
                      </a>
                    </li>
                  
                </marquee>
              </ul>
            </div>
          </div>
        </section>
        <section>
            <div class="sour_feature">
              <div class="scontainerr">
                <div class="sroww">
                  <div>
                    <div class="sfeature_box ">
                      <h1>
                        <span>25</span>+
                      </h1>
                      <p><h3>Years of Experience in Education</h3></p>
                    </div>
                  </div>
  
                  <div>
                    <div class="sfeature_box ">
                      <h1>
                        <span>50000</span>+
                      </h1>
                      <p><h3>Students &amp; Professionals trained so far here</h3></p>
                    </div>
                  </div>
  
                  <div>
                    <div class="sfeature_box ">
                      <h1>
                        <span>120</span>+
                      </h1>
                      <p><h3>Recruiters &amp; Placements</h3></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>

          <section>
            <div class="ssour_feature">
              <div class="sscontainerr">
                <div class="ssroww">
                  <div>
                    <div class="ssfeature_box first">
                      <h1>
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="56" height="55" fill="currentColor" class="bi bi-laptop" viewBox="0 0 16 16">
                            <path d="M13.5 3a.5.5 0 0 1 .5.5V11H2V3.5a.5.5 0 0 1 .5-.5h11zm-11-1A1.5 1.5 0 0 0 1 3.5V12h14V3.5A1.5 1.5 0 0 0 13.5 2h-11zM0 12.5h16a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5z"/>
                          </svg></span><br/>
                        <span>Webinars</span>
                      </h1>
                      <p><h3>Experienced Industry Professionals talk on latest technologies</h3>
                        <br/>
                        <br/>
                      <p><h4>CDAC-Mumbai destination to your dreams, supportive staff, trained professionals, learn high-end technologies today</h4></p>
                    </div>
                  </div>
  
                  <div>
                    <div class="ssfeature_box second">
                      <h1>
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="66" height="55" fill="currentColor" class="bi bi-book-half" viewBox="0 0 16 16">
                            <path d="M8.5 2.687c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492V2.687zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783z"/>
                          </svg></span><br/>
                          <span>Pre-CAT</span>
                      </h1>
                      <p><h3>Shape your future with us</h3></p>
                      <br/>
                      <br/>
                    <p><h4>CDAC-Mumbai destination to your dreams, supportive staff, trained professionals, learn high-end technologies today</h4></p>
                    </div>
                  </div>
  
                  <div>
                    <div class="ssfeature_box third">
                      <h1>
                        <span><svg xmlns="http://www.w3.org/2000/svg" width="66" height="55" fill="currentColor" class="bi bi-mortarboard-fill" viewBox="0 0 16 16">
                            <path d="M8.211 2.047a.5.5 0 0 0-.422 0l-7.5 3.5a.5.5 0 0 0 .025.917l7.5 3a.5.5 0 0 0 .372 0L14 7.14V13a1 1 0 0 0-1 1v2h3v-2a1 1 0 0 0-1-1V6.739l.686-.275a.5.5 0 0 0 .025-.917l-7.5-3.5Z"/>
                            <path d="M4.176 9.032a.5.5 0 0 0-.656.327l-.5 1.7a.5.5 0 0 0 .294.605l4.5 1.8a.5.5 0 0 0 .372 0l4.5-1.8a.5.5 0 0 0 .294-.605l-.5-1.7a.5.5 0 0 0-.656-.327L8 10.466 4.176 9.032Z"/>
                          </svg></span><br/>
                        <span>Modular Courses</span>
                      </h1>
                      <p><h3>Record of 100 % Placements</h3></p>
                      <br/>
                      <br/>
                    <p><h4>CDAC-Mumbai destination to your dreams, supportive staff, trained professionals, learn high-end technologies today</h4></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>

          <section>
            <div class="our_feature2 fsection">
              <div class="container2">
                <div class="row2">
                  <div>
                    <div class="feature_box2 ">
                      <h1>
                        <span>Sahil Kurale</span>
                      </h1>
                      <h1>
                        <span>PG-DAC</span>
                      </h1>
                      <p>
                        <h4>Cdac Mumbai has been life changing oppotunity for me, it
                            has help me build my skill set & i have achieved great
                            command on latest technologies. The staff is vaery
                            dedicated here. I am forever greatful for getting this
                            opportunity.</h4>
                      </p>
                    </div>
                  </div>
  
                  <div>
                    <div class="feature_box2 ">
                      <h1>
                        <span>Sahil Kurale</span>
                      </h1>
                      <h1>
                        <span>PG-DAC</span>
                      </h1>
                      <p>
                        <h4>Cdac Mumbai has been life changing oppotunity for me, it
                            has help me build my skill set & i have achieved great
                            command on latest technologies. The staff is vaery
                            dedicated here. I am forever greatful for getting this
                            opportunity.</h4>
                      </p>
                    </div>
                  </div>
                  <div>
                    <div class="feature_box2 ">
                      <h1>
                        <span>Sahil Kurale</span>
                      </h1>
                      <h1>
                        <span>PG-DAC</span>
                      </h1>
                      <p>
                        <h4>Cdac Mumbai has been life changing oppotunity for me, it
                            has help me build my skill set & i have achieved great
                            command on latest technologies. The staff is vaery
                            dedicated here. I am forever greatful for getting this
                            opportunity.</h4>
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>

          


          <section class="pt-5 pb-5">
            <div class="container">
              <div class="row">
                <div class="col-6">
                  <h1 class="mb-3" style="font-family:myCarousel; font-weight: bolder; font-size: 30px; color: rgb(16, 16, 16); text-underline-position: below;" >OUR RECRUITERS </h1>
                </div>
                <div class="col-6 text-right">
                  <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                    <i class="fa fa-arrow-left"></i>
                  </a>
                  <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators2" role="button" data-slide="next">
                    <i class="fa fa-arrow-right"></i>
                  </a>
                </div>
                <div class="col-12">
                  <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
          
                    <div class="carousel-inner" style="background-color:   #fbfbfb;
                    border-style: solid;
                    border-radius: 5%;
                    color: rgb(147, 142, 142);
                    
                    padding: 50px;">
                      <div class="carousel-item active">
                        <div class="row">
          
                          <div class="col-md-4 mb-3">
                            <div class="card">
                              <img class="img-fluid" alt="100%x280" src="./images/Amdocs.jpg" width="500px" height="600px">
                              
          
                            </div>
                          </div>
                          <div class="col-md-4 mb-3">
                            <div class="card">
                              <img class="img-fluid" alt="100%x280" src="./images/TCS.jpg" width="500px" height="600px">
                              
                            </div>
                          </div>
                          <div class="col-md-4 mb-3">
                            <div class="card">
                              <img class="img-fluid" alt="100%x280" src="./images/Siemens.jpg" width="500px" height="600px">
                              
                            </div>
                          </div>
          
                        </div>
                      </div>
                      <div class="carousel-item">
                        <div class="row">
          
                          <div class="col-md-4 mb-3">
                            <div class="card">
                              <img class="img-fluid" alt="100%x280" src="./images/Capgemini.jpg" width="500px" height="600px">
                              
          
                            </div>
                          </div>
                          <div class="col-md-4 mb-3">
                            <div class="card">
                              <img class="img-fluid" alt="100%x280" src="./images/cybage.jpg" width="500px" height="600px">
                             
                            </div>
                          </div>
                          <div class="col-md-4 mb-3">
                            <div class="card">
                              <img class="img-fluid" alt="100%x280" src="./images/L&Tinfotech.jpg" width="500px" height="600px">
                              
                            </div>
                          </div>
          
                        </div>
                      </div>
                      <div class="carousel-item">
                        <div class="row">
          
                          <div class="col-md-4 mb-3">
                            <div class="card">
                              <img class="img-fluid" alt="100%x280" src="./images/Bentley.jpg" width="500px" height="600px" >
                              
          
                            </div>
                          </div>
                         
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>


<%@include file="Footer.jsp" %>

</body>
</html>