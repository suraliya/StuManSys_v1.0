
$(document).ready(function(){
	
	$("#btn-login").unbind('submit').bind('submit', function () {
		
		var form = $(this);
		var email = $("#email").val();
		var password = $("#password").val();
		
		if(email === ""){
			$("#email").after('<p class="text-danger"> Email address is required </p>');
			$("#email").closest('.form-group').addClass('has-error');
		}
		else{
			$(".text-danger").remove();
			$('.form-group').removeClass('has-error');
		}
		
		if(password === ""){
			$("#password").after('<p class="text-danger"> Password is required </p>');
			$("#password").closest('.form-group').addClass('has-error');
		}
		else{
			$(".text-danger").remove();
			$('.form-group').removeClass('has-error');
		}
		
	});
	
});