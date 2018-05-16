/**
 *  Login user, Create user, Update User, Delete User, Fetch users
 */

$(document).ready(function() 
{
	$('#submitUserBtn').click(function(){		
	
		var form = $(this);
		var userFirstName = $("#userFirstName").val();
		var userLastName = $("#userLastName").val();
		var email = $("#email").val();
		var password = $("#password").val();
		var confPassword = $("#confPassword").val();
		var userType = $("#userType").val();
		var contact = $("#contact").val();

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
		
		if(userType == "Select..."){
			$("#userType").after('<p class="text-danger">User type is required</p>');
			$("#userType").closest('.form-group').addClass('has-error');			
		}
		else 
		{
			$("#userType").closest(".text-danger").remove();
			$("#userType").closest('.form-group').removeClass('has-error');
			$("#userType").closest('.form-group').addClass('has-success');
		}
		
		if(contact == ""){
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
			$.ajax({
				
				type 	: "POST",
				url 	: "addUserAction.action",
				data 	: { userFirstName:userFirstName, userLastName:userLastName, email:email, password:password, userType:userType, contact:contact },
				dataType: 'json',
				success : function(data) {
					$('form').trigger('reset');
					// remove text-error 
					$(".text-danger").remove();
					// remove from-group error
					$(".form-group").removeClass('has-error').removeClass('has-success');					
					alert("Data Addedd.");
					var ht = data.msg;
					$("#resp").html(ht);
				},
				error : function(data) {
					alert("Some error occured.");
				}
			});
		}
	});		
});		
