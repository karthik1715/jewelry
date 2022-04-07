@extends('layouts.default')
@section('title')
    {{ __('app.item.title') }}
@stop
<!-- Container fluid start -->
@section('content')
	<!-- ** Main container start ** -->
	<div class="main-container">

		<!-- Page header start -->
		<div class="page-header">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="{{url('item')}}" >
						{{ __('app.item.title') }}
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
					<a href="{{url('item')}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.general.back') }}">
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
							action="{{ isset($item) ? route('item.update',$item->id) : route('item.create') }}">
								@csrf
								@isset($item)
									@method('PUT')
								@endisset
								<div class="card-header">
									<div class="card-title">
										{{ isset($item) ? __('app.item.edit-title') : __('app.item.create-title') }}
									</div>
								</div>
								<div class="card-body">
									
									<!-- Row start -->
									<div class="row gutters">
										<div class="col-xl-4 col-lglg-4 col-md-4 col-sm-4 col-12">
											
											<!-- Form item start -->
											<div class="form-group">
												<label for="inputName">{{ __('app.group.formtitle') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control groupname" id="group_name" name="group_name" placeholder="{{ __('app.group.formtitle') }}" value="{{ $item->group->name ?? '' }}" >
												<input type="hidden" name="group_id" id="hidden_group_id" value="{{ $item->id ?? '0' }}" >
											</div>
											<!-- Form item end -->

										</div>

										<div class="col-xl-4 col-lglg-4 col-md-4 col-sm-4 col-12">
											
											<!-- Form goldcurrate start -->
											<div class="form-group">
												<label for="inputName">{{ __('app.item.formtitle') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="name" placeholder="{{ __('app.item.formtitle') }}" value="{{ $item->name ?? '' }}" required>
											</div>
											<!-- Form goldcurrate end -->

										</div>

										<div class="col-xl-4 col-lglg-4 col-md-4 col-sm-4 col-12">
											
											<!-- Form notes start -->
											<div class="form-group">
												<label for="inputName">{{ __('app.general.description') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="description" placeholder="{{ __('app.general.description') }}" value="{{ $item->description ?? '' }}" required>
											</div>
											<!-- Form notes end -->

										</div>

									</div>
									<div class="custom-btn-group">
										<button class="btn btn-primary" id="btnSubmit" type="submit">{{ __('app.general.submit') }}</button>
										<a class="btn btn-secondary" href="{{url('item')}}" role="button">{{ __('app.general.cancel') }}</a>
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
