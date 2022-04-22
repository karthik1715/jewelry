@extends('layouts.default')
@section('title')
    {{ __('app.goldrate.title') }}
@stop
<!-- Container fluid start -->
@section('content')
	<!-- ** Main container start ** -->
	<div class="main-container">

		<!-- Page header start -->
		<div class="page-header">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="{{url('goldrate')}}" >
						{{ __('app.goldrate.title') }}
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
					<a href="{{url('goldrate')}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.general.back') }}">
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
							action="{{ isset($goldrate) ? route('goldrate.update',$goldrate->id) : route('goldrate.create') }}">
								@csrf
								@isset($goldrate)
									@method('PUT')
								@endisset
								<div class="card-header">
									<div class="card-title">
										{{ isset($goldrate) ? __('app.goldrate.edit-title') : __('app.goldrate.create-title') }}
									</div>
								</div>
								<div class="card-body">
									
									<!-- Row start -->
									<div class="row gutters">
										<div class="col-xl-4 col-lglg-4 col-md-4 col-sm-4 col-12">
											
											<!-- Form goldrate start -->
											<div class="form-group">
												<label for="inputName">{{ __('app.group.formtitle') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control groupname" id="group_name" name="group_name" autocomplete = "off" placeholder="{{ __('app.group.formtitle') }}" value="{{ $goldrate->group->name ?? '' }}" required>
												<input type="hidden" name="group_id" id="hidden_group_id" value="{{ $goldrate->id ?? '' }}" >
											</div>
											<!-- Form goldrate end -->

										</div>

										<div class="col-xl-4 col-lglg-4 col-md-4 col-sm-4 col-12">
											
											<!-- Form goldcurrate start -->
											<div class="form-group">
												<label for="inputName">{{ __('app.general.currate') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="current_rate" placeholder="{{ __('app.general.currate') }}" value="{{ $goldrate->current_rate ?? '' }}" required>
											</div>
											<!-- Form goldcurrate end -->

										</div>

										<div class="col-xl-4 col-lglg-4 col-md-4 col-sm-4 col-12">
											
											<!-- Form goldcurdate start -->
											<div class="form-group">
												<label for="inputName">{{ __('app.general.date') }}</label><span class="text-danger">*</span>
												<input type="date" class="form-control" name="current_date" placeholder="{{ __('app.general.date') }}" value="{{ $goldrate->current_date ?? '' }}" required>
											</div>
											<!-- Form goldcurdate end -->

										</div>

										<div class="col-xl-4 col-lglg-4 col-md-4 col-sm-4 col-12">
											
											<!-- Form notes start -->
											<div class="form-group">
												<label for="inputName">{{ __('app.general.notes') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="notes" placeholder="{{ __('app.general.notes') }}" value="{{ $goldrate->notes ?? '' }}" required>
											</div>
											<!-- Form notes end -->

										</div>

									</div>
									<div class="custom-btn-group">
										<button class="btn btn-primary" id="btnSubmit" type="submit">{{ __('app.general.submit') }}</button>
										<a class="btn btn-secondary" href="{{url('goldrate')}}" role="button">{{ __('app.general.cancel') }}</a>
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