<%@page import="com.election.model.CommunicationLead"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <%
    	CommunicationLead lst = (CommunicationLead)request.getAttribute("ucls");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>CL Registeration</title>
</head>
<body>
<!--  
<script type="text/javascript" src="webjars/jquery/2.2.4/jquery.min.js" ></script>
<script type="text/javascript">

$(document).ready(function () {

    $("#CR_form").submit(function (event) {
        event.preventDefault();

        var product = {}
        product["id"] = $("#tid").val();
        product["first_name"] = $("#form3Example1cg").val();
        product["last_name"] = $("#form3Example2cg").val();
        product["gender"] = $("#form3Example2cg1").val();
        product["phone"] = $("#form3Example1cg1").val();
        product["branch"] = $("#bid").val();
        product["email"] = $("#form3Example3cg").val();
        product["password"] = $("#form3Example4cg").val();
        product["confirm_password"] = $("#form3Example4cdg").val();
        product["slogan"] = $("#sloganid").val();
        product["image"] = $("#image").val();

        $("#bth_submit").prop("disabled", true);

        $.ajax({
            type: "POST",
            contentType: "application/json",
            url: "http://localhost:8080/uuTL",
            data: JSON.stringify(product),
            dataType: 'json',
            cache: false,
            timeout: 600000,
            success: function (data) {

                var json = JSON.stringify(data, null, 4);
                $('#feedback').html(json);

                $("#bth_submit").prop("disabled", false);
            },
            error: function (e) {
                var json = e.responseText;
                $('#feedback').html(json);
                $("#bth_submit").prop("disabled", false);
            }
        }); 
    });
});
</script>
-->
<%@include file="Header.jsp" %>
<!---<script src="ValidateRegister.js"></script>-->

<div>
	<p id="feedback"></p>
</div>

	<form action="/uuCL" method="post" name="myform" id="CR_form">
<section class="vh-160 bg-image"
  style="background-image: url('https://media.istockphoto.com/id/1191184417/vector/vector-white-background.jpg?s=612x612&w=0&k=20&c=XZMWqfLdZ3ImrVgeFYzKs8-f_cr_GcD7X5F7cUqAkC8='););">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">CL Registeration</h2>

             <!--   <form action="" method="post">-->
				
				<input type="hidden" value="<%=lst.getId()%>" id="tid" name="id" />
				
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example1cg">First Name</label>
                  <input type="text" id="form3Example1cg" name="first_name" class="form-control form-control-lg" value="<%=lst.getFirst_name() %>" />
                  <label class="form-label" for="form3Example1cg" id="fname" style="color: red;"></label>
                </div>
                
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example1cg">Last Name</label>
                  <input type="text" id="form3Example2cg" name="last_name" class="form-control form-control-lg" value="<%=lst.getLast_name() %>"  />
                  <label class="form-label" for="form3Example1cg" id="lname" style="color: red;"></label>
                </div>
                
                <div class="form-outline mb-4">
                <label class="form-label" >Select Gender - </label>
                <%if(lst.getGender().equals("Male")){ %>
                  <input type="radio" id="form3Example2cg1" name="gender" value="Male" required="required" checked="checked" />Male
                  <input type="radio" id="form3Example2cg1" name="gender" value="Female" required="required" />Female  
                  <%}else{ %>
                  	<input type="radio" id="form3Example2cg1" name="gender" value="Male" required="required"  />Male
                  <input type="radio" id="form3Example2cg1" name="gender" value="Female" required="required" checked="checked"/>Female  
                  <%} %>
                  
                  
                </div>
                
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example1cg">Contact Number</label>
                  <input type="text" id="form3Example1cg1" name="phone" class="form-control form-control-lg"   value="<%=lst.getPhone() %>"  />
                  <label class="form-label" for="form3Example1cg" id="phone" style="color: red;"></label>
                </div>
				
                
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example1cg">Branch</label>
                  <select id="bid" class="form-control form-control-lg" name="branch" required="required"  value="<%=lst.getBranch()%>" >
                  	<option>--Select Branch--</option>
                  	<option value="kharghar">KHARGHAR</option>
                  	<option value="juhu">JUHU</option>
                  </select> 
                </div>
				
                <div class="form-outline mb-4">
                    <label class="form-label" for="form3Example3cg">Your Email</label>
                  <input type="email" id="form3Example3cg" name="email" class="form-control form-control-lg"  value="<%=lst.getEmail()%>" />
                  <label class="form-label" for="form3Example1cg" id="email" style="color: red;"></label>
                </div>
		
			
                  <input type="hidden" id="form3Example4cg" name="password" class="form-control form-control-lg"  value="<%=lst.getPassword()%>"/>
                  
                  <input type="hidden" id="form3Example4cdg" name="confirm_password" class="form-control form-control-lg" value="<%=lst.getConfirm_password()%>"/>
         
				  <input type="hidden" id="sloganid" name="slogan" value="<%=lst.getSlogan()%>">
				
				<input type="hidden" name="image" id="image" value="<%=lst.getImage()%>">
				

                <div class="d-flex justify-content-center">
                  <a href="Admin"><button type="submit"
                    class="btn btn-primary btn-block btn-lg gradient-custom-4 text-body" id="bth_submit" onclick="return validate()">Register</button></a>
                </div>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</form>
	<%@include file="Footer.jsp" %>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
<script>
function validate(){        

	var fname =
        document.forms.myform.fname.value;
    
	var lname =
        document.forms.myform.lname.value;
       
    var email =
        document.forms.myform.email.value;
    
    var password1 =
        document.forms.myform.pass.value;

    var password2 =
        document.forms.myform.cpass.value;

    var contact =
        document.forms.myform.phone.value;


	
	var regName=/^[a-zA-Z]{1,}$/;
    var regEmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g;  //Javascript reGex for Email Validation.
   
	var regPassword1=/^[a-zA-Z0-9]{8,22}$/;
	var regPassword2=/^[a-zA-Z0-9]{8,22}$/;
	var regContact=/^\d{10}$/; 

	
	if (fname == "" || !regName.test(fname)) 
    {
	    var msg = document.getElementById("fname");
	    msg.innerHTML=" *Please enter a valid name";
        return false;
    }

	if (lname == "" || !regName.test(lname)) 
    {
        var msg = document.getElementById("lname");
	    msg.innerHTML=" *Please enter a valid name";
        return false;
    }

	if (contact == "" || !regContact.test(contact)) 
    {
        var msg = document.getElementById("phone");
	    msg.innerHTML=" *Please enter a valid contact number";
        return false;
    }
    
  if (email == "" || !regEmail.test(email)) 
    {
        var msg = document.getElementById("email");
	    msg.innerHTML=" *Please enter a email";
        return false;
    }
  
			

   if (password1 == "" || !regPassword1.test(password1)) 
    {
        var msg = document.getElementById("pass");
	    msg.innerHTML=" *Please enter a valid password between 8 to 22 characters.";
        return false;
    }

   if (password2 == "" || !regPassword2.test(password2)) 
    {
        var msg = document.getElementById("cpass");
	    msg.innerHTML=" *Please enter a valid password between 8 to 22 characters.";
        return false;
    }
    
   if(password2!=password1)
    {
        var msg1 = document.getElementById("pass");
        var msg2 = document.getElementById("cpass");
	    msg1.innerHTML=" *Both password must be same.";
        msg2.innerHTML=" *Both password must be same.";
        return false;
    }

    return true;
}        
	
</script>

</html>