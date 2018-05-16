<head>
   	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>   
</head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   	<link rel="stylesheet" type="text/css" href="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>

<script type="text/javascript">

 $(document).ready(function() 
{
	//Active navBar
	$('#navManageUser').addClass('active');
	//Active Datatable
	$('#mytbl').dataTable();	
	
	//Add new user function
	$('#submitUserBtn').click(function(){			
	
		var form = $(this);
		var userFirstName = $("#userFirstName").val();
		var userLastName = $("#userLastName").val();
		var nic = $("#userNIC").val();
		var email = $("#email").val();
		var password = $("#password").val();
		var confPassword = $("#confPassword").val();
		var userType = $("#userType").val();
		var contactno = $("#contact").val();

		if(userFirstName == ""){
			$("#userFirstName").after('<p class="text-danger">First name is required</p>');
			$("#userFirstName").closest('.form-group').addClass('has-error');
		}
		else 
		{
			$("#userFirstName").closest(".text-danger").remove();
			$("#userFirstName").closest('.form-group').removeClass('has-error');
			$("#userFirstName").closest('.form-group').addClass('has-success');
		}
		
		if(userLastName == ""){
			$("#userLastName").after('<p class="text-danger">Last name is required</p>');
			$("#userLastName").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#userLastName").closest(".text-danger").remove();
			$("#userLastName").closest('.form-group').removeClass('has-error');
			$("#userLastName").closest('.form-group').addClass('has-success');
		}
		
		if(email == ""){
			$("#email").after('<p class="text-danger">Email address is required</p>');
			$("#email").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#email").closest(".text-danger").remove();
			$("#email").closest('.form-group').removeClass('has-error');
			$("#email").closest('.form-group').addClass('has-success');
		}
		
		if(nic == ""){
			$("#userNIC").after('<p class="text-danger">NICs is required</p>');
			$("#userNIC").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#userNIC").closest(".text-danger").remove();
			$("#userNIC").closest('.form-group').removeClass('has-error');
			$("#userNIC").closest('.form-group').addClass('has-success');
		}
		
		if(password == ""){
			$("#password").after('<p class="text-danger">Password is required</p>');
			$("#password").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#password").closest(".text-danger").remove();
			$("#password").closest('.form-group').removeClass('has-error');
			$("#password").closest('.form-group').addClass('has-success');
		}
		
		if(confPassword == ""){
			$("#confPassword").after('<p class="text-danger">Confirm password is required</p>');
			$("#confPassword").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#confPassword").closest(".text-danger").remove();
			$("#confPassword").closest('.form-group').removeClass('has-error');
			$("#confPassword").closest('.form-group').addClass('has-success');
		}
		
		if(userType == ""){
			$("#userType").after('<p class="text-danger">User type is required</p>');
			$("#userType").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#userType").closest(".text-danger").remove();
			$("#userType").closest('.form-group').removeClass('has-error');
			$("#userType").closest('.form-group').addClass('has-success');
		}
		
		if(contactno == ""){
			$("#contact").after('<p class="text-danger">Contact No is required</p>');
			$("#contact").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#contact").closest(".text-danger").remove();
			$("#contact").closest('.form-group').removeClass('has-error');
			$("#contact").closest('.form-group').addClass('has-success');
		}
		
		if(password != confPassword){
			$("#confPassword").after('<p class="text-danger">Confrm password doesn`t match</p>');
			$("#confPassword").closest('.form-group').addClass('has-error');	
		}
		
		else{
			$("#submitUserBtn").button('loading');
			$.ajax({
				
				type 	: "POST",
				url 	: "addUserAction.action",
				data 	: { userFirstName:userFirstName, userLastName:userLastName, email:email, nic:nic, password:password, userType:userType, contactno:contactno },
				success : function(data) {							
					alert("Data Addedd.");
				},
				error : function(data) {
					alert("Some error occured.");
				}
			});
		}
	});	
	
	$('#updateUserBtn').click(function(){
		alert("");
	});
});	

</script>

<!-- Include header file -->
<div class="container">
<%@include file="/assest/include/header.jsp" %>

<div class="row">
	<div class="col-md-12">
		<ol class="breadcrumb" style="padding-top: 1px; padding-bottom: 1px;">
		  <li> <a href="action/task"> Home </a> </li>		  
		  <li class="active"> User Settings </li>
		</ol>
		
		<div class="div-action pull pull-right" style="padding-bottom:20px;">
			<button class="btn btn-xs btn-primary button1" data-toggle="modal" id="addUserBtn" data-target="#addUserModal"> <i class="glyphicon glyphicon-plus-sign"></i> Add User </button>

		</div> <!-- div-action -->
		
		<s:form action="fetchUsersAction" id="listUserForm">
			<button type="submit" class="btn btn-xs btn-success" ><i class="glyphicon glyphicon-list"></i> View All</button>
		</s:form>
		
		<s:actionmessage />  
			
		<div class="col-md-12"> <!-- Users table -->
			<div style="margin-top: 25px; margin-right: auto;">
				<table class="table table-hover table-sm table-bordered" id="mytbl">
					<thead>
						<tr>
							<th>Name</th>
							<th>NIC</th>
							<th>Email</th>
							<th>Contact No</th>
							<th>Designation</th>
							<th>Action</th>
						</tr>
					</thead>
					<s:iterator var="list" value="usersList">
						<tr>
							<td style="width: 200px;">
								<s:property value="firstname" /> <s:property value="lastname" />
							</td>
							<td style="width: 170px;">
								<s:property value="nic" />
							</td>
							<td>
								<s:property value="email" />
							</td>
							<td style="width: 150px;">
								<s:property value="contactno" />
							</td>
							<td style="width: 150px;">
								<s:property value="usertype" />
							</td>
							<td style="width: 140px;">
								<button type="button" class="btn  btn-xs btn-info" data-toggle="modal" id="updateUserBtn" data-target="#editUserModal"><i class="glyphicon glyphicon-edit"></i>  Edit </button>
								<button type="button" class="btn btn-xs btn-danger" data-toggle="modal" data-target="#removeUserModal"><i class="glyphicon glyphicon-trash"></i> Remove </button>
							</td>						
						</tr>
					</s:iterator>	
				</table>
			</div>
		</div>  <!-- Users table -->
		<s:property value="lastname" />
	</div>
</div>

<!-- Add user model -->
<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">

    	<form class="form-horizontal" id="addUserForm" action="addUserAction" method="POST" enctype="multipart/form-data">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><i class="fa fa-plus"></i> Add User</h4>
	      </div>

	      <div class="modal-body" style="max-height:450px; overflow:auto;">

	      	<div id="add-user-messages"></div>	      		     	           	       

	        <div class="form-group">
	        	<label for="firstName" class="col-sm-3 control-label">First Name </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm input-sm" id="userFirstName" placeholder="First Name" name="userFirstName" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="lastName" class="col-sm-3 control-label">Last Name </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm input-sm" id="userLastName" placeholder="Last Name" name="userLastName" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
	        
	        <div class="form-group">
	        	<label for="lastName" class="col-sm-3 control-label">NIC</label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm input-sm" id="userNIC" placeholder="123456789v" name="nic" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->	    

	        <div class="form-group">
	        	<label for="address1" class="col-sm-3 control-label">Email </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="email" placeholder="Email" name="email" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="address2" class="col-sm-3 control-label">Password </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="password" class="form-control input-sm" id="password" placeholder="Password" name="password" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="address3" class="col-sm-3 control-label">Conf. Password </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="password" class="form-control input-sm" id="confPassword" placeholder="Confirm password" name="confPassword" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->	        	 

	        <div class="form-group">
	        	<label for="nic" class="col-sm-3 control-label">User Type </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <select class="form-control input-sm" id="userType" name="userType">
				      	<option value="">Select...</option>
					    <option value="Officer">Program Officer</option>
					    <option value="Examinar">Examiner</option>
					    <option value="Cashier">Cashier</option>
					    <option value="CourceCoordinator">Course coordinator</option>
					  </select>
				    </div>
	        </div> <!-- /form-group-->	     	        

	        <div class="form-group">
	        	<label for="contact" class="col-sm-3 control-label">Contact No </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="contact" name="contactno" placeholder="Contact No" autocomplete="off">				      	
				    </div>
	        </div> <!-- /form-group-->	       				        	         	       
        	        
	      </div> <!-- /modal-body -->
	      
	     <s:actionmessage />  
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-xs btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
	        <button onclick="document.getElementById('form1').submit();" type="submit" class="btn btn-xs btn-primary" id="submitUserBtn" data-loading-text="Loading..." autocomplete="off"> <i class="glyphicon glyphicon-ok-sign"></i> Save </button>
	      </div> <!-- /modal-footer -->	
	      <%-- <font color="red"><s:fielderror name="invalid"/></font> --%>
	      <div class="text-center" id="resp" style="margin-top: 14px;"></div>      
     	</form> <!-- /.form -->	     
    </div> <!-- /modal-content -->    
  </div> <!-- /modal-dailog -->
</div> <!-- Add user model --


<!-- Edit user model -->
<div class="modal fade" id="editUserModal" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">

    	<form class="form-horizontal" id="editUserForm" action="editUserAction" method="POST" enctype="multipart/form-data">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><i class="fa fa-plus"></i> Edit User</h4>
	      </div>

	      <div class="modal-body" style="max-height:450px; overflow:auto;">

	      	<div id="edit-user-messages"></div>	      		     	           	       

	        <div class="form-group">
	        	<label for="firstName" class="col-sm-3 control-label">First Name </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm input-sm" id="userFirstName" placeholder="First Name" name="userFirstName" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="lastName" class="col-sm-3 control-label">Last Name </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm input-sm" id="userLastName" placeholder="Last Name" name="userLastName" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
	        
	        <div class="form-group">
	        	<label for="lastName" class="col-sm-3 control-label">NIC</label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm input-sm" id="nic" placeholder="123456789v" name="nic" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->	    

	        <div class="form-group">
	        	<label for="address1" class="col-sm-3 control-label">Email </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="email" placeholder="Email" name="email" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="address2" class="col-sm-3 control-label">Password </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="password" class="form-control input-sm" id="password" placeholder="Password" name="password" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="address3" class="col-sm-3 control-label">Conf. Password </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="password" class="form-control input-sm" id="confPassword" placeholder="Confirm password" name="confPassword" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->	        	 

	        <div class="form-group">
	        	<label for="nic" class="col-sm-3 control-label">User Type </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <select class="form-control input-sm" id="userType" name="userType">
				      	<option value="">Select...</option>
					    <option value="Officer">Program Officer</option>
					    <option value="Examinar">Examiner</option>
					    <option value="Cashier">Cashier</option>
					    <option value="CourceCoordinator">Course coordinator</option>
					  </select>
				    </div>
	        </div> <!-- /form-group-->	     	        

	        <div class="form-group">
	        	<label for="contact" class="col-sm-3 control-label">Contact No </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="contact" name="contact" placeholder="Contact No" autocomplete="off">				      	
				    </div>
	        </div> <!-- /form-group-->	       				        	         	       
        	        
	      </div> <!-- /modal-body -->
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-xs btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
	        <button type="button" class="btn btn-xs btn-primary" id="submitUserBtn" data-loading-text="Loading..." autocomplete="off"> <i class="glyphicon glyphicon-ok-sign"></i> Save </button>
	      </div> <!-- /modal-footer -->	
	      <%-- <font color="red"><s:fielderror name="invalid"/></font> --%>
	      <div class="text-center" id="resp" style="margin-top: 14px;"></div>      
     	</form> <!-- /.form -->	     
    </div> <!-- /modal-content -->    
  </div> <!-- /modal-dailog -->
</div> <!-- Edit user model --

<!-- Remove User -->
<div class="modal fade" tabindex="-1" role="dialog" id="removeUserModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><i class="glyphicon glyphicon-trash"></i> Remove User </h4>
      </div>
      <div class="modal-body">

      	<div class="removeUserMessages"></div>

        <p><b>Do you really want to remove ?</b></p>
      </div>
      <div class="modal-footer removeUserFooter">
        <button type="button" class="btn btn-xs btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close </button>
        <button type="button" class="btn btn-xs btn-danger" id="removeUserBtn" data-loading-text="Loading..."> <i class="glyphicon glyphicon-ok-sign"></i> Remove </button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- /Remove User -->

<!-- Include footer file -->
<%@include file="/assest/include/footer.jsp" %>

</div>	
</body>
</html>