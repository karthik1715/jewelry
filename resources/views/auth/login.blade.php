<!doctype html>
<html lang="en">
	
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Meta -->
		<meta name="description" content="Responsive Bootstrap4 Dashboard Template">
		<meta name="author" content="ParkerThemes">
		<link rel="shortcut icon" href="{{ URL::asset('public/assets/img/fav.png') }}" />

		<!-- Title -->
		<title>Coderz Admin Template - Login</title>
		
		<!-- *************
			************ Common Css Files *************
		************ -->
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="{{ URL::asset('public/assets/css/bootstrap.min.css') }}" />

		<!-- Master CSS -->
		<link rel="stylesheet" href="{{ URL::asset('public/assets/css/main.css') }}" />

	</head>
	<body class="authentication">

		<!-- Container start -->
		<div class="container">
			@include('includes.flash-message')
			<!-- Form start -->
			<form method="POST" action="{{ route('login.post') }}">
				@csrf
				<!-- Row start -->
				<div class="row justify-content-md-center">
					<div class="col-xl-4 col-lg-5 col-md-5 col-sm-6 col-12">
						
						<!-- Login screen start -->
						<div class="login-screen">
							<div class="login-box">
								<a href="#" class="login-logo">
									<img src="{{ URL::asset('public/assets/img/logo-dark.png') }}" alt="Coderz Admin Dashboard" />
								</a>
								<h5>Welcome back,<br />Please Login to your Account.</h5>
								<div class="form-group">
									<input type="text" id="email_address" class="form-control" name="email" placeholder="Email Address" />
									@if ($errors->has('email'))
										<span class="text-danger">{{ $errors->first('email') }}</span>
									@endif
								</div>
								<div class="form-group">
									<input type="password" id="password" class="form-control" name="password" placeholder="Password" />
									@if ($errors->has('password'))
										<span class="text-danger">{{ $errors->first('password') }}</span>
									@endif
								</div>
								<div class="actions mb-4">
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" id="remember_pwd">
										<label class="custom-control-label" for="remember_pwd">Remember me</label>
									</div>
									<button type="submit" class="btn btn-danger">Login</button>
								</div>
								<div class="forgot-pwd">
									<a class="link" href="#">Forgot Password?</a>
								</div>
								<hr>
								<div class="actions align-left">
									<span class="additional-link">New Here? <a href="#">Create an Account</a></span>
								</div>
							</div>
						</div>
						<!-- Logi screen end -->

					</div>
				</div>
				<!-- Row end -->

			</form>
			<!-- Form end -->

		</div>
		<!-- Container end -->

	</body>
</html>