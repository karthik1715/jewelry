@extends('layouts.default')
@section('title')
    {{ __('app.group.title') }}
@stop
<!-- Container fluid start -->
@section('content')
	<!-- ** Main container start ** -->
	<div class="main-container">

		<!-- Page header start -->
		<div class="page-header">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="{{url('group')}}" >
						{{ __('app.group.title') }}
					</a></li>
				<li class="breadcrumb-item active">{{ __('app.general.forminput') }}</li>
			</ol>

			<ul class="app-actions">
				<li>
					<a href="#" id="reportrange">
						<span class="range-text"></span>
						<i class="icon-chevron-down"></i>	
					</a>
				</li>
				<li>
					<a href="{{url('group')}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.general.back') }}">
						<i class="icon-arrow_back"></i>
					</a>
				</li>
				<!-- <li>
					<a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Print">
						<i class="icon-print"></i>
					</a>
				</li>
				<li>
					<a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download CSV">
						<i class="icon-cloud_download"></i>
					</a>
				</li> -->
			</ul>
		</div>
		<!-- Page header end -->

		<!-- Content wrapper start -->
		<div class="content-wrapper">

			<!-- Fixed body scroll start -->
			<div class="fixedBodyScroll">

				<!-- Row start -->
				<div class="row gutters">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						
						<!-- Card start -->
						<div class="card">
							<form id="contactFrom" role="form" method="POST"
							action="{{ isset($group) ? route('group.update',$group->id) : route('group.create') }}">
								@csrf
								@isset($group)
									@method('PUT')
								@endisset
								<div class="card-header">
									<div class="card-title">
										{{ isset($group) ? __('app.group.edit-title') : __('app.group.create-title') }}
									</div>
								</div>
								<div class="card-body">
									
									<!-- Row start -->
									<div class="row gutters">
										<div class="col-xl-4 col-lglg-4 col-md-4 col-sm-4 col-12">
											
											<!-- Form group start -->
											<div class="form-group">
												<label for="inputName">{{ __('app.general.name') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="name" placeholder="Enter Group name" value="{{ $group->name ?? '' }}" required>
											</div>
											<!-- Form group end -->

										</div>
										
									</div>
									<div class="custom-btn-group">
										<button class="btn btn-primary" type="submit">{{ __('app.general.submit') }}</button>
										<a class="btn btn-secondary" href="{{url('group')}}" role="button">{{ __('app.general.cancel') }}</a>
									</div>
									<!-- Row end -->
								
								</div>
							</form>
						</div>
						<!-- Card end -->

					</div>
				</div>
				<!-- Row end -->

			</div>
			<!-- Fixed body scroll end -->
			
		</div>
		<!-- Content wrapper end -->

		</div>
	<!-- ** Main container end ** -->

<!-- Container fluid end -->

@stop