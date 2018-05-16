<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" />

<%@include file="/assest/include/bootstrap.jsp" %>
<%@include file="/error.jsp" %>

   	<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>

<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/assest/custom/css/footer.css">
<title>Student Management System</title>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assest/favicon.ico" />
<s:head/>

</head>
<body>
		
	<s:if test="#session.user.usertype=='Admin'.toString()"> <!-- Admin navBar -->		
		
		<nav class="navbar navbar-inverse navbar-expand-sm fixed-top" >
			<div class="container-fluid">
			    <ul class="nav navbar-nav">
			      <li id="navDashboard"><a href="action/task"><i class="glyphicon glyphicon-dashboard"></i> Dashboard</a></li>
			      <li id="navManageUser"><a href="action/user" href="javascript:{}" onclick="document.getElementById('#listUserForm').submit(); return false;"><i class="fa fa-user-plus"></i> Users</a></li>
			      <li id="navStudent"><a href="action/student" href="javascript:{}" onclick="document.getElementById('#listStudentForm').submit(); return false;"><i class="fa fa-users"></i> Students</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			    	<li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-user-circle-o"></i>  <s:property value="#session['user'].fname" /> <s:property value="#session['user'].lname" />
				        </span></a>
				        <ul class="dropdown-menu">
				          <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal"> <span class="glyphicon glyphicon-cog"></span> Settings </a></li>
				          <li><a href="action/logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>		          
				        </ul>
		      		</li>	
			    </ul>
			</div>
		</nav>	
		
	</s:if> <!-- /Admin navBar -->	
	
	<s:if test="#session.user.usertype=='Officer'.toString()"> <!-- Officer navBar -->
	
		<nav class="navbar navbar-inverse navbar-expand-sm fixed-top">
			<div class="container-fluid">
			    <ul class="nav navbar-nav">
			      <li id="navDashboard"><a href="action/task"><i class="glyphicon glyphicon-dashboard"></i> Dashboard</a></li>
			      <li id="navStudent"><a href="action/student" href="javascript:{}" onclick="document.getElementById('listStudentForm').submit(); return false;"><i class="fa fa-users"></i> Students</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal"><i class="glyphicon glyphicon-calendar"></i> Courses</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal"><i class="glyphicon glyphicon-usd"></i> Payments</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			    	<li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-user-circle-o"></i> <s:property value="#session['user'].fname" /> <s:property value="#session['user'].lname" />
				        <span class="caret"></span></a>
				        <ul class="dropdown-menu">
				          <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
				          <li><a href="action/logout"><span class="glyphicon glyphicon-log-out"> Logout</span></a></li>		          
				        </ul>
		      		</li>	
			    </ul>
			</div>
		</nav>		
	
	</s:if> <!-- /Officer navBar -->
	
	<s:if test="#session.user.usertype=='Examinar'.toString()"> <!-- Examinar navBar -->		
		
		<nav class="navbar navbar-inverse navbar-expand-sm fixed-top" >
			<div class="container-fluid">
			    <ul class="nav navbar-nav">
			      <li id="navDashboard"><a href="action/task">Dashboard</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Exams</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Students</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Results</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			    	<li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>  <s:property value="#session['user'].fname" /> <s:property value="#session['user'].lname" />
				        </span></a>
				        <ul class="dropdown-menu">
				          <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal"> <span class="glyphicon glyphicon-cog"></span> Settings </a></li>
				          <li><a href="action/logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>		          
				        </ul>
		      		</li>	
			    </ul>
			</div>
		</nav>	
		
	</s:if> <!-- /Examiner navBar -->		
	
	
	<s:if test="#session.user.usertype=='Cashier'.toString()"> <!-- Cashier navBar -->		
		
		<nav class="navbar navbar-inverse navbar-expand-sm fixed-top" >
			<div class="container-fluid">
			    <ul class="nav navbar-nav">
			      <li id="navDashboard"><a href="action/task">Dashboard</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Payments</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Students</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			    	<li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>  <s:property value="#session['user'].fname" /> <s:property value="#session['user'].lname" />
				        </span></a>
				        <ul class="dropdown-menu">
				          <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal"><span class="glyphicon glyphicon-cog"></span> Settings </a></li>
				          <li><a href="action/logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>		          
				        </ul>
		      		</li>	
			    </ul>
			</div>
		</nav>	
		
	</s:if> <!-- /Cashier navBar -->	
	
	<s:if test="#session.user.usertype=='CourceCoordinator'.toString()"> <!-- CourceCoordinator navBar -->		
		
		<nav class="navbar navbar-inverse navbar-expand-sm fixed-top" >
			<div class="container-fluid">
			    <ul class="nav navbar-nav">
			      <li id="navDashboard"><a href="action/task">Dashboard</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Courses</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Students</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Exams</a></li>
			      <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal">Results</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			    	<li class="dropdown">
				        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>  <s:property value="#session['user'].fname" /> <s:property value="#session['user'].lname" />
				        </span></a>
				        <ul class="dropdown-menu">
				          <li><a href="javascript:;" class="error" data-toggle="modal" data-target="#errorModal"> <span class="glyphicon glyphicon-cog"></span> Settings </a></li>
				          <li><a href="action/logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>		          
				        </ul>
		      		</li>	
			    </ul>
			</div>
		</nav>	
		
	</s:if> <!-- /CourceCoordinator navBar -->
	
