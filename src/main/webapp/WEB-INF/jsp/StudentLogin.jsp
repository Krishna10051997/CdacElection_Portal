<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Student Login Form</title>
</head>
<body>
<%@include file="Header.jsp" %>
	<form action="studentLogin" method="post">
<section class="vh-100 gradient-custom" style="background-image: url(https://images.pexels.com/photos/1229861/pexels-photo-1229861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Student Login</h2>
              <p class="text-white-50 mb-5">Please enter your login and password!</p>
				<div style="color:red ; padding: 6px">
					<%=(request.getParameter("msg")!=null)?request.getParameter("msg"):""%>
				</div>
              <div class="form-outline form-white mb-4">
                <input type="email" id="typeEmailX" name="email" class="form-control form-control-lg" required />
                <label class="form-label" for="typeEmailX">Email</label>
              </div>

              <div class="form-outline form-white mb-4">
                <input type="password" id="typePasswordX" name="password" class="form-control form-control-lg" required />
                <label class="form-label" for="typePasswordX">Password</label>
              </div>


              <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>


            </div>

            <div>
              <p class="mb-0">Don't have an account? <a href="Student_Register" class="text-white-50 fw-bold">Register</a>
              </p>
            </div>
            
            
            

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</form>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


</body>
</html>