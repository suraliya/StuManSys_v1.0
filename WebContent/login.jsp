<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@include file="/assest/include/bootstrap.jsp" %>
<%@include file="/error.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/assest/custom/css/my-login.css">
<script type="text/javascript" src="/assest/custom/js/my-login.js"></script>
<script type="text/javascript" src="/assest/custom/js/userLogin.js"></script>	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login here</title>

<script type="text/javascript">

	$(document).ready(function(){
		
		//Form submit
		$("#btn-login").click(function(){
			
			//Get id's into variables
			var form = $(this);
			var email = $("#email").val();
			var password = $("password").val();
			
			if(email === ""){
				$("#email").after('<p class="text-danger">Email field is required</p>');
				$("#email").closest('.form-group').addClass('has-error');				
			}
			else{
				$(".text-danger").remove();
				$('.form-group').removeClass('has-error');	  					
			}
			
			if(password === ""){
				$("#password").after('<p class="text-danger">Email field is required</p>');
				$("#password").closest('.form-group').addClass('has-error');						
			}
			else{
				$(".text-danger").remove();
				$('.form-group').removeClass('has-error');	  					
			}
		});
	});

</script>

</head>
<body>


<div class="container">
<div class="center">
	<section id="login">
	    <div class="container">
	    	<div class="row">
	    	    <div class="col-sm-12">
	        	    <div class="form-wrap">
	                <h1> Login here... </h1>
	                
	                    <form role="form" action="loginAction" method="post" validate="true" namespace="action" autocomplete="off">
	                    
	                        <div class="form-group">
	                            <!-- <label for="email" >Email</label> -->
	                            <div class="input-group">
		                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
		                            <input type="email" name="email" id="email" class="form-control form-control-sm" placeholder="somebody@example.com" autocomplete="off">
	                            </div>
	                        </div>
	                        <div class="form-group">
	                            <!-- <label for="key" >Password</label> -->
	                            <div class="input-group">	                      
		                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		                            <input type="password" name="password" id="password" class="form-control form-control-sm" placeholder="Password" autocomplete="off">
	                            </div>
	                        </div>
                       	    <s:fielderror name="invalid" style="color:red; font-family: cursive;" />   
                       	                     
	                        <input type="submit" id="btn-login" class="btn btn-custom btn-sm btn-block" value="Log in">
	                    </form>
	                    <a href="javascript:;" class="forget" data-toggle="modal" data-target="#errorModal">Forgot your password?</a>
	                    <hr>
	        	    </div>
	    		</div> <!-- /.col-xs-12 -->
	    	</div> <!-- /.row -->
	    </div> <!-- /.container -->
	</section>


	<footer id="footer">
	    <div class="container">
	        <div class="row">
	            <div class="col-sm-12">
	                <p>Student Management System </p>
	                <p>© 2018 All Rights Reserved.</p>
	                <p>Powered by <strong>ITEx Sollutions</strong></p>
	            </div>
	        </div>
	    </div>
	</footer>
</div>
</div>

</body>
</html>
