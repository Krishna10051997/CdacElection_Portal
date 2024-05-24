<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="static/AboutUs.css">
    <title>Document</title>
    <style>
    * {
    box-sizing: border-box;
  }
  
  body {
    font-family: Arial;
    padding: 20px;
    background: #f1f1f1;
  }
  
  /* Header/Blog Title */
  .header {
    padding: 30px;
    font-size: 40px;
    text-align: center;
    background: white;
  }
  
  /* Create two unequal columns that floats next to each other */
  /* Left column */
  .leftcolumn {
    float: left;
    width: 75%;
  }
  
  /* Right column */
  .rightcolumn {
    float: left;
    width: 25%;
    padding-left: 20px;
  }
  
  /* Fake image */
  .fakeimg {
    background-color: #aaa;
    width: 100%;
    padding: 20px;
  }
  
  /* Add a card effect for articles */
  .card {
    background-color: white;
    padding: 20px;
    margin-top: 20px;
  }
  
  /* Clear floats after the columns */
  .row:after {
    content: "";
    display: table;
    clear: both;
  }
  
  /* Footer */
  .footer {
    padding: 20px;
    text-align: center;
    background: #ddd;
    margin-top: 20px;
  }
  
  /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
  @media screen and (max-width: 800px) {
    .leftcolumn, .rightcolumn {
      width: 100%;
      padding: 0;
    }
  }
    </style>
</head>
<body>
<%@include file="Header.jsp" %>
    <div class="header">
        <h2 style="color: rgb(14, 61, 130);">CDAC MUMBAI</h2>
      </div>
      
      <div class="row">
        <div class="leftcolumn">
          <div class="card">
            <h2>About Us</h2>
            <!-- <h5>Title description, Dec 7, 2017</h5> -->
            <div class="fakeimg" style="height:500px; background-color: white;"><img src="./images/khbuil.jpg" style="margin-right:2px ;"><img src="./images/juhu.jfif" style="height:370px ;"></div>
            <p>C-DAC Mumbai, earlier known as NCST, started operations in the Juhu campus in 1985. There are two campuses in Mumbai, at Juhu and at Kharghar. It has a rich history of cutting edge R&D in areas of Computer Graphics, Computer Networks, Language Translation, Educational Applications of AI, Resource Scheduling, etc. It was among the pioneers in bringing Internet to India through the ERNET project, and also in multi-lingual technologies.</p>
          </div>
          <div class="card">
            <h2>Notable achievements of the centre include:</h2>
            <!-- <h5>Title description, Sep 2, 2017</h5> -->
            <div class="fakeimg" style="height:350px; background-image: url(./images/bg2.jpg);"><img src="https://www.cdac.in/index.aspx?id=img_Mumbai-cb"  style="height: 250px; width: 1000px; "></div>
            <p>
                <li>First virtual trade fair system developed for Common Wealth.</li>
                <li>A series of vehicle scheduling applications for Air India, Oil Coordination Committee, and Indian oil.</li>
                <li>Customs Valuation project for Indian Customs, Kenya and Ethiopia.</li>
                <li>National and State level e-Governance Service Delivery Gateway.</li>
                <li>Biometrics solutions for Fingerprint, Iris, and Face Recognition.</li>
                <li>A collection of virtual lab experiments for schools (Olabs)</li>
                <li>ILO compliant seafarer identification solution for DG Shipping.</li>
                <li>Providing the entire software solution for the GATE examination spanning from candidate registration to score report and counselling.</li>
                <li>Mobile Seva project.</li>
                <li>Long Range Identification and Tracking for DG Shipping.</li>
                <br/>
                <br/>
                
                Currently the centre is working in areas like Authentication Technologies, Disaster Recovery, Microservice based application development, Deep Learning applications, Mobile Computing, Blockchain Solutions, Virtual Labs, Educational games, Robotics, Accessibility, Online Assessment, etc.
                <br/>
                <br/>

                The Centre runs the PG-DAC and PG-DBDA 6-month diploma programmes at both the campuses, with excellent placement records so far.

            </p>
          </div>
        </div>
        <div class="rightcolumn">
          <div class="card">
            <h2>About Me</h2>
            <!-- <div class="fakeimg" style="height:100px;">Image</div> -->
            <div class="fakeimg"> <a href="Home"><p style="font-family:carouselExampleIndicators2; font-size:20px ;">Gallery</p></a></div>
           
          </div>
          <div class="card">
            <h3>Popular Post</h3>
    
            <div class="fakeimg"><a href="https://in.linkedin.com">Linkdin</a></div><br>
            <div class="fakeimg"><a href="https://www.facebook.com">Facebook</a></div><br>
            <div class="fakeimg"><a href="https://twitter.com/login?lang=en">Twitter</a></div>
          </div>
          <div class="card">
            <h3>Contact Us</h3>
            <p>Centre for Development of Advanced Computing<br/>
                C-DAC Innovation Park,<br/>
                Panchavati, Pashan, Pune - 411 008, Maharashtra (India)<br/>
                Phone: +91-20-25503100<br/>
                Fax: +91-20-25503131</p>
          </div>
        </div>
      </div>
     
      
</body>
</html>