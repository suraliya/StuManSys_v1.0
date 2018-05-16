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
	$('#navStudent').addClass('active');
	//Active Datatable
	$('#mytbl').dataTable();	

	//Add new user function
	$('#submitStudentBtn').click(function(){	
		
		$(".text-danger").remove();
	
		var form = $(this);
		var studentFirstName = $("#studentFirstName").val();
		var studentLastName = $("#studentLastName").val();
		var studentDOB = $("#studentDOB").val();
		var gender = $("#gender").val();
		var nic = $("#nic").val();
		var contactno = $("#contactno").val();
		var email = $("#email").val();
		var address = $("#address").val(); 
		var course = $("#course").val();

		if(studentFirstName == ""){
			$("#studentFirstName").after('<p class="text-danger">Fisrt Name field is required</p>');
			$("#studentFirstName").closest('.form-group').addClass('has-error');			
		} 
		else 
		{
			if(/^([a-zA-Z ]){3,100}$/.test(studentFirstName))
				{
					$("#studentFirstName").closest(".text-danger").remove();
					$("#studentFirstName").closest('.form-group').removeClass('has-error');
					$("#studentFirstName").closest('.form-group').addClass('has-success');
				}
			else
				{
					$("#studentFirstName").after('<p class="text-danger">Enter appropriate First Name</p>');
					$("#studentFirstName").closest('.form-group').addClass('has-error');		
				}
		}
		
		
		if(studentLastName == ""){
			$("#studentLastName").after('<p class="text-danger">Last Name field is required</p>');
			$("#studentLastName").closest('.form-group').addClass('has-error');			
		} 
		else 
		{
			if(/^([a-zA-Z ]){3,100}$/.test(studentLastName))
				{
					$("#studentLastName").closest(".text-danger").remove();
					$("#studentLastName").closest('.form-group').removeClass('has-error');
					$("#studentLastName").closest('.form-group').addClass('has-success');
				}
			else
				{
					$("#studentLastName").after('<p class="text-danger">Enter appropriate Last Name</p>');
					$("#studentLastName").closest('.form-group').addClass('has-error');		
				}
		}
		
		
		if(nic == ""){
			$("#nic").after('<p class="text-danger">NIC field is required</p>');
			$("#nic").closest('.form-group').addClass('has-error');			
		} 
		else 
		{
			if(/^\d{9}[V|v|X|x]$/.test(nic))
				{
					$("#nic").closest(".text-danger").remove();
					$("#nic").closest('.form-group').removeClass('has-error');
					$("#nic").closest('.form-group').addClass('has-success');
				}
			else
				{
					$("#nic").after('<p class="text-danger">Enter valid NIC</p>');
					$("#nic").closest('.form-group').addClass('has-error');		
				}
		}
		
		if(address == "") 
		{
			$("#address").after('<p class="text-danger">Address field is required</p>');
			$('#address').closest('.form-group').addClass('has-error');
			add2 = 0;
		}
		else
		{
			if (/^[^'"]*$/.test(address)) 
			{
			    // remov error text field
				$("#address").find('.text-danger').remove();
				// success out for form 
				$("#address").closest('.form-group').addClass('has-success');
				add2 = 1;
			}	// /else		
			else 
			{
			    
            	$("#address").after('<p class="text-danger">Address field is Invalid</p>');
				$('#address').closest('.form-group').addClass('has-error');
				add2 = 0;
			}
		}
		
		/*if(email == ""){
			$("#email").after('<p class="text-danger">Email address is required</p>');
			$("#email").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#email").closest(".text-danger").remove();
			$("#email").closest('.form-group').removeClass('has-error');
			$("#email").closest('.form-group').addClass('has-success');
		}*/
		
		
		if(email == ""){
			$("#email").after('<p class="text-danger">Email address is required</p>');
			$("#email").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			if(/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email))
				{
					$("#email").closest(".text-danger").remove();
					$("#email").closest('.form-group').removeClass('has-error');
					$("#email").closest('.form-group').addClass('has-success');
				}
			else
				{
					$("#email").after('<p class="text-danger">Enter valid Email</p>');
					$("#email").closest('.form-group').addClass('has-error');	
				}
			
		}
		
		
		if(/^\d{1,2}\/\d{1,2}\/\d{4}$/.test(studentDOB)){
			$("#studentDOB").after('<p class="text-danger">Password is required</p>');
			$("#studentDOB").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#studentDOB").closest(".text-danger").remove();
			$("#studentDOB").closest('.form-group').removeClass('has-error');
			$("#studentDOB").closest('.form-group').addClass('has-success');
		}   
		
		/*if(studentDOB == ""){
			$("#studentDOB").after('<p class="text-danger">DOB is required</p>');
			$("#studentDOB").closest('.form-group').addClass('has-error');			
		} 
		else 
		{
			if(/^\d{1,2}\/\d{1,2}\/\d{4}$/.test(studentDOB))
				{
					$("#studentDOB").closest(".text-danger").remove();
					$("#studentDOB").closest('.form-group').removeClass('has-error');
					$("#studentDOB").closest('.form-group').addClass('has-success');
				}
			else
				{
					$("#studentDOB").after('<p class="text-danger">Enter vali Last Name</p>');
					$("#studentDOB").closest('.form-group').addClass('has-error');		
				}
		}*/
		
		
		if(contactno == ""){
			$("#contactno").after('<p class="text-danger">Contact No is required</p>');
			$("#contactno").closest('.form-group').addClass('has-error');			
		} 
		else 
		{
			if(/^\d{10}$/.test(contactno))
				{
					$("#contactno").closest(".text-danger").remove();
					$("#contactno").closest('.form-group').removeClass('has-error');
					$("#contactno").closest('.form-group').addClass('has-success');
				}
			else
				{
					$("#contactno").after('<p class="text-danger">Enter valid Contact Number</p>');
					$("#contactno").closest('.form-group').addClass('has-error');		
				}
		}
		
		
		
		if(course == ""){
			$("#course").after('<p class="text-danger">Course is required</p>');
			$("#course").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#course").closest(".text-danger").remove();
			$("#course").closest('.form-group').removeClass('has-error');
			$("#course").closest('.form-group').addClass('has-success');
		}
		
		
		if(gender == ""){
			$("#gender").after('<p class="text-danger">Confirm password is required</p>');
			$("#gender").closest('.form-group').addClass('has-error');			
		}
		
		else{
			$("#submitStudentBtn").button('loading');
			$.ajax({
				
				type 	: "POST",
				url 	: "addStudentAction.action",
				data 	: { firstname:firstname, lastname:lastname, dob:dob, gender:gender, contactno:contactno, email:email, address:address, course:course},
				success : function(data) {
					
					$("#submitStudentBtn").button('reset');
					$('form').trigger('reset');
					//$("html, body, div.modal, div.modal-content, div.modal-body").animate({scrollTop: '0'}, 100);
					alert("Student Added");
					
					// shows a successful message after operation
					$('#add-user-messages').after('<div class="alert alert-success">'+
						'<button type="button" class="close" data-dismiss="alert">&times;</button>'+
						'<strong><i class="glyphicon glyphicon-ok-sign"></i></strong> '+ response.messages +
					  '</div>');

					// remove the mesages
          			$(".alert-success").delay(500).show(10, function() 
					{
						$(this).delay(3000).hide(10, function() 
						{
							$(this).remove();
						});
					}); // /.alert
					
					//alert("Data Addedd.");
					
					//form reset
					$("#addUserForm")[0].reset();
					// remove text-error 
					$(".text-danger").remove();
					// remove from-group error
					$(".form-group").removeClass('has-error').removeClass('has-success');

				},
				error : function(data) {
					alert("Some error occured.");
				}
			});
		}
	});		
});	
 function editStudent(stu_id) {
	
	 //alert("Edit Student " + stu_id);
	 $('#editStu_id').val(stu_id);

	
}
 
</script>

<!-- Include header file -->
<div class="container">
<%@include file="/assest/include/header.jsp" %>

<div class="row">
	<div class="col-md-12">
		<ol class="breadcrumb" style="padding-top: 1px; padding-bottom: 1px;">
		  <li> <a href="action/task"> Home </a> </li>		  
		  <li class="active"> Students </li>
		</ol>
		
		<div class="div-action pull pull-right" style="padding-bottom:20px;">
			<button class="btn btn-xs btn-primary button1" data-toggle="modal" id="addStudentBtn" data-target="#addStudentModel"> <i class="glyphicon glyphicon-plus-sign"></i> Add Student </button>

		</div> <!-- div-action -->
		
		<s:form action="fetchStudentAction" id="listStudentForm">
			<button type="submit" class="btn btn-xs btn-success" ><i class="glyphicon glyphicon-list"></i> View All</button>
		</s:form>

		<div class="col-md-12"> <!-- Users table -->
			<div style="margin-top: 25px; margin-right: auto;">
				<table class="table table-hover table-sm table-bordered" id="mytbl">
					<thead>
						<tr>
							<th style="width: 150px;">Student ID</th>
							<th>Name</th>
							<!-- <th>DOB</th> -->
							<th>NIC</th>
							<th>Contact</th>
							<th>Email</th>
							<th>Address</th>
							<th>Course</th>
							<th>Action</th>
						</tr>
					</thead>
					<s:iterator var="list" value="usersList">
						<tr>
							<td>
								<s:property value="stu_id" />
							</td>
							<td>
								<s:property value="firstname" /> <s:property value="lastname" />
							</td>
							<%-- <td>
								<s:property value="dob" />
							</td> --%>
							<td>
								<s:property value="nic" />
							</td>
							<td>
								<s:property value="contactno" />
							</td>
							<td>
								<s:property value="email" />
							</td>
							<td>
								<s:property value="address" />
							</td>
							<td>
								<s:property value="course" />
							</td>
							<td>
								<button type="button"  onclick="editStudent(<s:property value="stu_id"/>);" class="btn  btn-xs btn-info" data-toggle="modal" id="editStudentBtn" data-target="#editStudentModel"><i class="glyphicon glyphicon-edit"></i>  Edit </button>
								<button type="button" class="btn btn-xs btn-danger" data-toggle="modal" id="removeStudentBtn" data-target="#removeStudentModal"><i class="glyphicon glyphicon-trash"></i> Remove </button>
							</td>						
						</tr>
					</s:iterator>	
				</table>
			</div>
		</div>  <!-- Users table -->
		
	</div>
</div>

<!-- Add student model -->
<div class="modal fade" id="addStudentModel" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">

    	<form class="form-horizontal" id="addStudentForm" action="addStudentAction" method="POST" enctype="multipart/form-data">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><i class="fa fa-plus"></i> Add Student</h4>
	      </div>

	      <div class="modal-body" style="max-height:450px; overflow:auto;">

	      	<div id="add-student-messages"></div>	      		     	           	       

	        <div class="form-group">
	        	<label for="firstName" class="col-sm-3 control-label">Name </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-4">
				      <input type="text" class="form-control input-sm input-sm" id="studentFirstName" placeholder="First Name" name="studentFirstName" autocomplete="off">
				    </div>
				    <div class="col-sm-4">
				      <input type="text" class="form-control input-sm input-sm" id="studentLastName" placeholder="Last Name" name="studentFirstName" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="lastName" class="col-sm-3 control-label">DOB </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="date" class="form-control input-sm input-sm" id="studentDOB" placeholder="DOB" name="studentDOB" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->	    

	        <div class="form-group">
	        	<label for="address" class="col-sm-3 control-label">Gender </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				    	<label class="radio-inline">
							<input type="radio" name="gender" id="gender" value="1">Male
						</label>
						<label class="radio-inline">
							<input type="radio" name="gender" id="gender" value="2">Female
						</label>
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="address2" class="col-sm-3 control-label">NIC</label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="nic" placeholder="123456789v" name="nic" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
	        
	        <div class="form-group">
	        	<label for="address2" class="col-sm-3 control-label">Contact No </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="contactno" placeholder="07X XX XX XXX" name="contactno" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="address3" class="col-sm-3 control-label"> Email </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="email" placeholder="anyname@sample.com" name="email" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->	        	 

	        <div class="form-group">
	        	<label for="contact" class="col-sm-3 control-label">Address </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <textarea class="form-control input-sm" rows="3" id="address" name="address" placeholder="Address Line 01" autocomplete="off"></textarea>	
				    </div>
	        </div> <!-- /form-group-->		        
	        
	        <div class="form-group">
	        	<label for="nic" class="col-sm-3 control-label">Course </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <select class="form-control input-sm" id="course" name="course">
				      	<option value="">Select...</option>
					    <option value="DCSD">DCSD</option>
					    <option value="DSE">DSE</option>
					    <option value="HDSE">HDSE</option>
					    <option value="HDCBIS">HDCBIS</option>
					  </select>
				    </div>
	        </div> <!-- /form-group-->	     	        
	               				        	         	       
        	        
	      </div> <!-- /modal-body -->
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-xs btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
	        <button type="button" class="btn btn-xs btn-primary" id="submitStudentBtn" data-loading-text="Saving..." autocomplete="off"> <i class="glyphicon glyphicon-ok-sign"></i> Save </button>
	      </div> <!-- /modal-footer -->	
	      <%-- <font color="red"><s:fielderror name="invalid"/></font> --%>
	      <div class="text-center" id="resp" style="margin-top: 14px;"></div>      
     	</form> <!-- /.form -->	     
    </div> <!-- /modal-content -->    
  </div> <!-- /modal-dailog -->
</div> <!-- Add student model --


<!-- Edit user model -->
<div class="modal fade" id="editStudentModel" tabindex="-1" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">

    	<form class="form-horizontal" id="editStudentForm" action="editStudentAction" method="POST" enctype="multipart/form-data">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title"><i class="fa fa-plus"></i> Edit Student</h4>
	      </div>

	      <div class="modal-body" style="max-height:450px; overflow:auto;">

	      	<div id="edit-user-messages"></div>	      		     	           	       
			
			<div class="form-group">
	        	<label for="stu_id" class="col-sm-3 control-label">Student ID </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-4">
				      <input type="text" disabled class="form-control input-sm input-sm" id="editStu_id" name="stu_id" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
			
	        <div class="form-group">
	        	<label for="firstName" class="col-sm-3 control-label">Name </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-4">
				      <input type="text" class="form-control input-sm input-sm" id="editStudentFirstName" placeholder="First Name" name="studentFirstName" autocomplete="off">
				    </div>
				    <div class="col-sm-4">
				      <input type="text" class="form-control input-sm input-sm" id="editStudentLastName" placeholder="Last Name" name="studentFirstName" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="lastName" class="col-sm-3 control-label">DOB </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="date" class="form-control input-sm input-sm" id="editStudentDOB" placeholder="DOB" name="studentDOB" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->	    

	        <div class="form-group">
	        	<label for="address" class="col-sm-3 control-label">Gender </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				    	<label class="radio-inline">
							<input type="radio" name="gender" id="editGender" value="1">Male
						</label>
						<label class="radio-inline">
							<input type="radio" name="gender" id="editGender" value="2">Female
						</label>
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="address2" class="col-sm-3 control-label">NIC</label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="editNic" placeholder="123456789v" name="nic" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->
	        
	        <div class="form-group">
	        	<label for="address2" class="col-sm-3 control-label">Contact No </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="editContactno" placeholder="07X XX XX XXX" name="contactno" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->

	        <div class="form-group">
	        	<label for="address3" class="col-sm-3 control-label"> Email </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control input-sm" id="editEmail" placeholder="anyname@sample.com" name="emial" autocomplete="off">
				    </div>
	        </div> <!-- /form-group-->	        	 

	        <div class="form-group">
	        	<label for="contact" class="col-sm-3 control-label">Address </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <textarea class="form-control input-sm" rows="3" id="editAddress" name="address" placeholder="Address Line 01" autocomplete="off"></textarea>	
				    </div>
	        </div> <!-- /form-group-->		        
	        
	        <div class="form-group">
	        	<label for="nic" class="col-sm-3 control-label">Course </label>
	        	<label class="col-sm-1 control-label">: </label>
				    <div class="col-sm-8">
				      <select class="form-control input-sm" id="editCourse" name="course">
				      	<option value="">Select...</option>
					    <option value="DCSD">DCSD</option>
					    <option value="DSE">DSE</option>
					    <option value="HDSE">HDSE</option>
					    <option value="HDCBIS">HDCBIS</option>
					  </select>
				    </div>
	        </div> <!-- /form-group-->	             				        	         	       
        	        
	      </div> <!-- /modal-body -->
	      
	      <div class="modal-footer">
	        <button type="button" class="btn btn-xs btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close</button>
	        <button type="button" class="btn btn-xs btn-primary" id="submitStudentBtn" data-loading-text="Saving..." autocomplete="off"> <i class="glyphicon glyphicon-ok-sign"></i> Save </button>
	      </div> <!-- /modal-footer -->	
	      <div class="text-center" id="resp" style="margin-top: 14px;"></div>      
     	</form> <!-- /.form -->	     
    </div> <!-- /modal-content -->    
  </div> <!-- /modal-dailog -->
</div> <!-- Edit user model --


<!-- Remove Student -->
<div class="modal fade" tabindex="-1" role="dialog" id="removeStudentModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><i class="glyphicon glyphicon-trash"></i> Remove Student </h4>
      </div>
      <div class="modal-body">

      	<div class="removeStudentMessages"></div>

        <p><b>Do you really want to remove ?</b></p>
      </div>
      <div class="modal-footer removeStudentFooter">
        <button type="button" class="btn btn-xs btn-default" data-dismiss="modal"> <i class="glyphicon glyphicon-remove-sign"></i> Close </button>
        <button type="button" class="btn btn-xs btn-danger" id="removeStudentBtn" data-loading-text="Loading..."> <i class="glyphicon glyphicon-ok-sign"></i> Remove </button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- /Remove Student -->


<!-- Include footer file -->
<%@include file="/assest/include/footer.jsp" %>

</div>	
</body>
</html>