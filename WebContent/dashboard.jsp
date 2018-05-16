<!-- Include header file -->
<div class="container">

<%@include file="/assest/include/header.jsp" %>
<head>
   <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
</head>
<script type="text/javascript">

	$(document).ready(function() {
		//Active navBar
		$('#navDashboard').addClass('active');
	});	
	
</script>

<div class="jumbotron text-center">
  <h1>Student Management System</h1>
  <p>Customizable, Eassy and efficency Management</p> 
</div>
  

  <div class="row">
  
    <div class="col-sm-4">
      <div class="panel panel-success">
			<div class="panel-heading">
				<a href="#" style="text-decoration:none;color:black;">
					<b>Total Students</b>
					<span class="badge pull pull-right">2,789</span>	
				</a>
				
			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
    </div>
    
    <div class="col-sm-4">
      <div class="panel panel-info">
			<div class="panel-heading">
				<a href="#" style="text-decoration:none;color:black;">
					Total Courses
					<span class="badge pull pull-right">21</span>	
				</a>
				
			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
    </div>
    
    <div class="col-sm-4">
      <div class="panel panel-danger">
			<div class="panel-heading">
				<a href="#" style="text-decoration:none;color:black;">
					<b>Current user</b> <br>
					Name : <s:property value="#session['user'].fname" /> <s:property value="#session['user'].lname" /> <br>
					Type : <s:property value="#session['user'].usertype" />
					<span class="badge pull pull-right">#</span>	
				</a>
				
			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
    </div>
    <div class="col-sm-12">
      <div class="panel panel-primary">
			<div class="panel-heading">
				<a href="#" style="text-decoration:none;color:black;">
					<b><center> </center></b>
						
					<span class="badge pull pull-right"></span>	
				</a>
				
			</div> <!--/panel-hdeaing-->
		</div> <!--/panel-->
    </div>
    
  </div> <!-- /row -->

<!-- Include footer file -->
<%@include file="/assest/include/footer.jsp" %>

</div>	


</body>
</html>