<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<!-- <html lang="en"> -->
<head>
    <title>@yield('title')</title>
    <!-- HEAD -->
    @include('includes.head')
</head>
<body>
        @include('includes.header')

		<!-- Container fluid start -->
		<div class="container-fluid">

			<!-- Navigation start -->
			@include('includes.menu')
			<!-- Navigation end -->

			<!-- ** Main container start ** -->
			<div class="main-container">
                @yield('content')
			</div>
			<!-- ** Main container end ** -->

			<!-- Footer start -->
			<!-- <footer class="main-footer">© Coderz 2020- 2022</footer> -->
			<!-- Footer end -->

		</div>
		<!-- Container fluid end -->

		<!-- *************
			************ Required JavaScript Files *************
		************* -->
        @include('includes.footer')

	</body>
    @yield('script')
</html>