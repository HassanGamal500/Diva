<!-- start login modal -->
<!-- Modal -->
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	 aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body px-5">
				<h5 class="mb-2">{{trans('website.Login')}}</h5>
				<span class="gray bold">{{trans('website.Dont have account')}}</span>
				<a class="second-color bold pointerCur" data-toggle="modal" data-target="#register"
				   data-dismiss="modal">{{trans('website.Sign Up')}}</a>
				<form class="shake mt-5" role="form" method="post" id="LoginForm" name="contact-form"
					  data-toggle="validator">
				    @csrf
					<!-- phone -->
					<div class="form-group label-floating">
						<label class="control-label" for="phone">{{trans('website.Phone Number')}}</label>
						<input class="form-control" id="phone" type="text" name="phone"
							   data-error="Please enter your phone number">
						<div class="help-block with-errors"></div>
					</div>
					<!-- password -->
					<div class="input-icons">
						<div class="form-group label-floating">
							<label class="control-label" for="pw">{{trans('website.Password')}}</label>
							<i class="fa fa-eye icon gray"></i>
							<input class="input-field form-control text-left pw" id="pass" type="password" name="password">
						</div>
					</div>
					<!-- submit -->
					<a href="#" class="float-right gray bold link" data-toggle="modal" data-target="#reset"
					   data-dismiss="modal">{{trans('website.Forgot Password')}}</a>
					<div class="form-submit mt-5 text-center">
						<button type="submit" class="btn btn-secondary d-btn px-5">{{trans('website.Login')}}</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- end login modal -->
<!-- start register modal -->
<!-- Modal -->
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	 aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body px-5">
				<h5 class="mb-2">{{trans('website.Register')}}</h5>
				<span class="gray bold">{{trans('website.Already have an account?')}}</span>
				<a href="#" class="second-color bold pointerCur" data-toggle="modal" data-target="#login"
				   data-dismiss="modal">{{trans('website.Login')}}</a>
				<form class="shake mt-5" role="form" method="post" id="RegisterForm" name="contact-form"
					  data-toggle="validator">
				    @csrf
					<!-- name -->
					<div class="form-row">
						<div class="form-group col-md-6 label-floating">
							<label class="control-label" for="fisrtName">{{trans('website.First Name')}}</label>
							<input class="form-control clearValue" id="fisrtNameRegister" name="fisrtName" type="text"
								   data-error="Please enter your first name">
						</div>
						<div class="form-group col-md-6 label-floating">
							<label class="control-label" for="lastName">{{trans('website.Last Name')}}</label>
							<input type="text" id="lastNameRegister" name="lastName" class="form-control clearValue"
								   data-error="Please enter your last name">
						</div>
					</div>
					<!-- email -->
					<div class="form-group label-floating">
						<label class="control-label" for="emailRegister">{{trans('website.Email')}}</label>
						<input class="form-control clearValue" id="emailRegister" name="email" type="text"
							   data-error="Please enter your email address">
						<div class="help-block with-errors"></div>
					</div>
					<!-- phone -->
					<div class="form-group label-floating">
						<label class="control-label" for="phoneRegister">{{trans('website.Phone Number')}}</label>
						<input class="form-control clearValue" id="phoneRegister" name="phone" type="tel" name="phone"
							   data-error="Please enter your phone number">
						<div class="help-block with-errors"></div>
					</div>
					<!-- password -->
					<div class="input-icons">
						<div class="form-group label-floating">
							<label class="control-label" for="pw">{{trans('website.Password')}}</label>
							<i class="fa fa-eye icon gray"></i>
							<input class="input-field form-control text-left pw clearValue" id="passwordRegister" type="password" name="password">
						</div>
					</div>
					<!-- code -->
					<div class="input-icons">
						<div class="form-group label-floating">
							<label class="control-label" for="code">{{trans('website.Invite code')}}</label>
							<input class="input-field form-control text-left clearValue" id="codeRegister" name="code" type="text">
						</div>
					</div>
					<!-- gender -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<input class="form-check-input" type="radio" name="gender" id="genderRegister"
								   value="male">
							<label class="form-check-label" for="inlineRadio1">{{trans('website.Male')}}</label>
						</div>
						<div class="form-group col-md-6">
							<input class="form-check-input" type="radio" name="gender" id="genderRegister"
								   value="female">
							<label class="form-check-label" for="inlineRadio1">{{trans('website.Female')}}</label>
						</div>
					</div>
					<!-- submit -->
					<div class="form-submit mt-5 text-center">
						<button type="submit" class="btn btn-secondary d-btn px-5">{{trans('website.Register')}}</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
<!-- end register modal -->
<!-- start forget pw modal -->
<div class="modal fade" id="reset" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	 aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body px-5">
				<h5 class="mb-2">{{trans('website.Forgot Password')}}</h5>
				<p class="gray bold">{{trans('website.Enter your phone number and we will send verification code for reset password')}}</p>
				<form class="shake" role="form" method="post" id="forgetPasswordForm" data-toggle="validator">
				    @CSRF
					<!-- phone -->
					<div class="form-group label-floating">
						<label class="control-label" for="phone">{{trans('website.Phone Number')}}</label>
						<input class="form-control" id="get-phone" type="text" name="phone"
							   data-error="{{trans('website.Please enter your valid phone number')}}">
						<div class="help-block with-errors"></div>
					</div>
					<!-- submit -->
					<div class="form-submit mt-5 text-center">
						<button type="submit" class="btn btn-secondary d-btn px-5">{{trans('website.Send')}}</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- end forget pw modal -->
<!-- start verification code -->
<div class="modal fade" id="verification" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	 aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body px-5">
				<h5 class="mb-2">{{trans('website.Verification Code')}}</h5>
				<p class="gray bold">{{trans('website.Verification code has been sent to your phone')}} </p>
				<form class="shake verification-form" role="form" method="post" id="verificationForm" data-toggle="validator">
				    @CSRF
				    <input type="hidden" id="first-code" name="firstName" value="">
				    <input type="hidden" id="last-code" name="lastName" value="">
				    <input type="hidden" id="phone-code" name="phone" value="">
				    <input type="hidden" id="email-code" name="email" value="">
				    <input type="hidden" id="password-code" name="password" value="">
				    <input type="hidden" id="invite-code" name="invite_code" value="">
				    <input type="hidden" id="gender-code" name="gender" value="">
				    <input type="hidden" id="type" name="type" value="">
				    
					<input type="text" class="inputs" id="one" maxLength="1" size="1" min="0" max="9" pattern="[0-9]{1}" />
					<input type="text" class="inputs" id="two" maxLength="1" size="1" min="0" max="9" pattern="[0-9]{1}" />
					<input type="text" class="inputs" id="three" maxLength="1" size="1" min="0" max="9" pattern="[0-9]{1}" />
					<input type="text" class="inputs" id="four" maxLength="1" size="1" min="0" max="9" pattern="[0-9]{1}" />
					<!-- resend -->
					<div class="form-submit mt-5 text-center">
						<button id="resend" class="px-5 gray none-btn">{{trans('website.Resend')}}</button>
					</div>
					<!-- submit -->
					<div class="form-submit mt-3 text-center">
						<button type="submit" class="btn btn-secondary d-btn px-5">{{trans('website.Send')}}</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- end verification code -->
<!-- start reset pw modal -->
<div class="modal fade" id="resetPW" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	 aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body px-5">
				<h5 class="mb-2">{{trans('website.Reset Password')}}</h5>
				<span class="gray bold">{{trans('website.Set your new password and you will return to login')}}</span>
				<form class="shake mt-5" role="form" method="post" id="resetForm" name="contact-form" data-toggle="validator">
				    @CSRF
					<!-- password -->
					<input type="hidden" id="phone-reset" name="phone" value="">
					<div class="input-icons">
						<div class="form-group label-floating">
							<label class="control-label" for="pw">{{trans('website.Password')}}</label>
							<i class="fa fa-eye icon gray"></i>
							<input class="input-field form-control text-left pw" type="password" name="new_password">
						</div>
					</div>
					<div class="input-icons">
						<div class="form-group label-floating">
							<label class="control-label" for="pw">{{trans('website.Repassword')}}</label>
							<i class="fa fa-eye icon gray"></i>
							<input class="input-field form-control text-left pw" type="password" name="renew_password">
						</div>
					</div>
					<!-- submit -->
					<div class="form-submit mt-5 text-center">
						<button type="submit" class="btn btn-secondary d-btn px-5">{{trans('website.Login')}}</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- end reset pw modal -->
<!--jquery CDN-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap CDN -->
@if (session()->get('front-locale') == 'ar')
<!-- rtl -->
<script src="https://cdn.rtlcss.com/bootstrap/v4.0.0/js/bootstrap.min.js"
    integrity="sha384-54+cucJ4QbVb99v8dcttx/0JRx4FHMmhOWi4W+xrXpKcsKQodCBwAvu3xxkZAwsH"
    crossorigin="anonymous"></script>
@else
<!-- ltr -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
@endif
<script src="{!! asset('website/js/ETC.js') !!}"></script>
<script src="{!! asset('website/js/slick.js') !!}"></script>
<script src="{!! asset('website/js/main.js') !!}"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
    
	$(".inputs").keyup(function () {
		if (this.value.length == this.maxLength) {
		$(this).next('.inputs').focus();
		}
	});
    
    $("form#contactUsForm").submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            url: 'sendMail',
            type: 'POST',
            data: formData,
            success: function (data) {
                if (data==1) {
                    swal("{{Lang::get('labels.userThankYou')}}", "", "success");
                    $('input.clearValue').val('');
                    $('textarea.clearValue').val('');
                }else if(data==2){
                    swal("{{Lang::get('labels.errorOccurred')}}", "", "warning");
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet",
						}
					});
                }

            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
    
    $("form#subscribesForm").submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            url: '{{url('/')}}/addSubscribes',
            type: 'POST',
            data: formData,
            success: function (data) {
                if (data==1) {
                    swal("{{Lang::get('labels.userThankYou')}}", "", "success");
                    $('input.clearValue').val('');
                    $('textarea.clearValue').val('');
                }else if(data==2){
                    swal("{{Lang::get('labels.errorOccurred')}}", "", "warning");
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet"
						}
					});
                }

            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
    
    // $(document).ready(function() {
    //     $.ajaxSetup({
    //         headers: {
    //             'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
    //         }
    //     });
    // });
    
    $("form#RegisterForm").submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            url: '{{url('/')}}/post-registration',
            type: 'POST',
            data: formData,
            success: function (data) {
                if (data==1) {
                    // location.reload();
                    var type = 1;
                    var fisrt = $('#fisrtNameRegister').val();
                    var last = $('#lastNameRegister').val();
                    var email = $('#emailRegister').val();
                    var phone = $('#phoneRegister').val();
                    var password = $('#passwordRegister').val();
                    var code = $('#codeRegister').val();
                    var gender = $('#genderRegister').val();
                    $('#type').val(type);
                    $('#first-code').val(fisrt);
                    $('#last-code').val(last);
                    $('#email-code').val(email);
                    $('#phone-code').val(phone);
                    $('#password-code').val(password);
                    $('#invite-code').val(code);
                    $('#gender-code').val(gender);
                    
                    $('#register input.clearValue').val('');
                    
                    $('#register').modal('hide');
                    $('#verification').modal('show');
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet",
						}
					});
                }

            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
    
    $("form#LoginForm").submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            url: '{{url('/')}}/post-login',
            type: 'POST',
            data: formData,
            success: function (data) {
                if (data==1) {
                    location.reload();
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet",
						}
					});
                }

            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
    
    $("form#accountForm").submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            url: '{{url('/')}}/update-profile',
            type: 'POST',
            data: formData,
            success: function (data) {
                if (data==1) {
                    location.reload();
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet",
						}
					});
                }

            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
    
    $("form#forgetPasswordForm").submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            url: '{{url('/')}}/update-reset',
            type: 'POST',
            data: formData,
            success: function (data) {
                if (data==1) {
                    var type = 2;
                    var phone = $('#get-phone').val();
                    $('#type').val(type);
		            $('#phone-code').val(phone);
                    $('#reset').modal('hide');
                    $('#verification').modal('show');
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet",
						}
					});
                }

            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
    
    $("form#verificationForm").submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);
        var pin_code = $('#one').val()+$('#two').val()+$('#three').val()+$('#four').val();
        // console.log(pin_code);
        formData.append('pin_code', pin_code);

        $.ajax({
            url: '{{url('/')}}/verification',
            type: 'POST',
            data: formData,
            success: function (data) {
                if (data == 1) {
                    location.reload();
                }else if(data == 2){
                    var phone = $('#phone-code').val();
                    $('#phone-reset').val(phone);
                    $('#verification').modal('hide');
                    $('#resetPW').modal('show');
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet",
						}
					});
                }

            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
    
    $('#resend').click(function(e){
        e.preventDefault();
        var phone = $('#phone-code').val();
        console.log(phone);
        $.ajax({
            url: '{{url('/')}}/resend',
            dataType: "json",
            type: 'POST',
            data: {
                'phone': phone,
                '_token':'{{csrf_token()}}'
            },
            success: function (data) {
                if (data == 1) {
                    swal("{{Lang::get('labels.check your code on your message')}}", "", "success");
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet",
						}
					});
                }
            },
            cache: false,
        });
    });
    
    $("form#resetForm").submit(function(e) {
        e.preventDefault();
        var formData = new FormData(this);

        $.ajax({
            url: '{{url('/')}}/reset-password',
            type: 'POST',
            data: formData,
            success: function (data) {
                if(data == 1){
                    $('#resetPW').modal('hide');
                    $('#login').modal('show');
                }else{
                    swal("{{Lang::get('labels.errorOccurred')}}", data['message'], "warning", {
						button: {
							text: "{{Lang::get('labels.Ok')}}",
							className: "sweet",
						}
					});
                }

            },
            cache: false,
            contentType: false,
            processData: false
        });
    });
</script>