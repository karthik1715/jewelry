@extends('layouts.default')
@section('title')
    {{ __('app.scheme.title') }}
@stop
<!-- Container fluid start -->
@section('content')
	<!-- ** Main container start ** -->
	<div class="main-container">

		<!-- Page header start -->
		<div class="page-header">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="{{url('scheme')}}" >
						{{ __('app.scheme.title') }}
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
					<a href="{{url('scheme')}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.general.back') }}">
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
					<form id="contactFrom" role="form" method="POST"
						action="{{ isset($scheme) ? route('scheme.update',$scheme->id) : route('scheme.create') }}" >
							@csrf
						@isset($scheme)
							@method('PUT')
						@endisset
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<!-- Card start -->
							<div class="card">
								<div class="card-header">
									<div class="card-title">
										{{ isset($scheme) ? __('app.scheme.edit-title') : __('app.scheme.create-title') }}
									</div>
								</div>
								<div class="card-body">
									
									<!-- Row start -->
									<div class="row gutters">
										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.schemetype') }}</label><span class="text-danger">*</span>
												<select class="form-control" name="scheme_type_id" id="scheme_type_id">
													<option>Select</option>
													@if( isset($scheme->scheme_type_id) && $scheme->scheme_type_id !='')         
														<option value="1" {{ $scheme->scheme_type_id == '1' ? 'selected="selected"' : '' }} >Gold Loan</option>
													@else
														<option value="1">Gold Loan</option>
													@endif
												</select>
											</div>
										</div>

										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.scheme.formtitle') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="name" placeholder="{{ __('app.scheme.formtitle') }}" value="{{ $scheme->name ?? '' }}" required>
											</div>
										</div>

										<div class="col-xl-6 col-lglg-6 col-md-6 col-sm-6 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.description') }}</label><span class="text-danger">*</span>
												<textarea class="form-control"  name="description" rows="2" placeholder="{{ __('app.general.description') }}">{{ $scheme->description ?? '' }}</textarea>
											</div>
										</div>

										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.group.formtitle') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control groupname" name="group_name" placeholder="{{ __('app.group.formtitle') }}" value="{{ $scheme->group->name ?? '' }}" required>
												<input type="hidden" name="group_ref_id" id="hidden_group_id" value="{{ $scheme->group_ref_id ?? '0' }}" >
											</div>
										</div>

										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.apply-from') }}</label><span class="text-danger">*</span>
												<input type="date" class="form-control" name="start_date" placeholder="{{ __('app.general.apply-from') }}" value="{{ $scheme->start_date ?? '' }}" required>
											</div>
										</div>

										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.to') }}</label><span class="text-danger">*</span>
												<input type="date" class="form-control" name="end_date" placeholder="{{ __('app.general.to') }}" value="{{ $scheme->end_date ?? '' }}" required>
											</div>
										</div>
										
										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.cal-basis') }}</label><span class="text-danger">*</span>
												<select class="form-control" name="loan_basis" id="loan_basis">
													<option>Select</option>
													@if( isset($scheme->loan_basis) && $scheme->loan_basis !='')         
														<option value="1" {{ $scheme->loan_basis == '1' ? 'selected="selected"' : '' }} >Daily</option>
														<option value="2" {{ $scheme->loan_basis == '2' ? 'selected="selected"' : '' }} >Weekly</option>
														<option value="3" {{ $scheme->loan_basis == '3' ? 'selected="selected"' : '' }} >Monthly</option>
													@else
														<option value="1" >Daily</option>
														<option value="2" >Weekly</option>
														<option value="3" >Monthly</option>
													@endif
													
												</select>
											</div>
										</div>
										
										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.pay-advance') }}</label><span class="text-danger">*</span>
												<select class="form-control" name="payment_in_advance" id="payment_in_advance">
													@if( isset($scheme->payment_in_advance) && $scheme->payment_in_advance !='')         
														<option value="1" {{ $scheme->payment_in_advance == '1' ? 'selected="selected"' : '' }} >No</option>
														<option value="2" {{ $scheme->payment_in_advance == '2' ? 'selected="selected"' : '' }} >Yes</option>
													@else
														<option value="1">No</option>
														<option value="2">Yes</option>
													@endif
													>
												</select>
											</div>
										</div>
										
										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.pre-close') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="preclosure_time" placeholder="{{ __('app.general.pre-close') }}" value="{{ $scheme->preclosure_time ?? '' }}" required>
											</div>
										</div>
										
										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.penalty-type') }}</label><span class="text-danger">*</span>
												<select class="form-control" name="penalty_type" id="penalty_type">
													<option>Select</option>
													@if( isset($scheme->penalty_type) && $scheme->penalty_type !='')         
														<option value="1" {{ $scheme->penalty_type == '1' ? 'selected="selected"' : '' }} >Percent</option>
														<option value="2" {{ $scheme->penalty_type == '2' ? 'selected="selected"' : '' }} >Amount</option>
													@else
														<option value="1">No</option>
														<option value="2">Yes</option>
													@endif
												</select>
											</div>
										</div>
										
										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.penalty') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="penalty" placeholder="{{ __('app.general.penalty') }}" value="{{ $scheme->penalty ?? '' }}" required>
											</div>
										</div>
										
										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.pay-basis') }}</label><span class="text-danger">*</span>
												<select class="form-control" name="payment_basis_on" id="payment_basis_on">
													<option>Select</option>
													@if( isset($scheme->payment_basis_on) && $scheme->payment_basis_on !='')         
														<option value="1" {{ $scheme->payment_basis_on == '1' ? 'selected="selected"' : '' }} >Interest</option>
														<option value="2" {{ $scheme->payment_basis_on == '2' ? 'selected="selected"' : '' }} >EMI</option>
													@else
														<option value="1">Interest</option>
														<option value="2">EMI</option>
													@endif
												</select>
											</div>
										</div>
										
										<!-- <div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.loan-approval') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="loan_approval" placeholder="{{ __('app.general.loan-approval') }}" value="{{ $scheme->loan_approval ?? '' }}" required>
											</div>
										</div> -->

										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.lending_rate') }} {{ __('app.general.pergm') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="lending_rate" placeholder="{{ __('app.general.lending_rate') }}" value="{{ $scheme->lending_rate ?? '' }}" required>
											</div>
										</div>
										
										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.min-loan') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="minimum_loan_amount" placeholder="{{ __('app.general.min-loan') }}" value="{{ $scheme->minimum_loan_amount ?? '' }}" required>
											</div>
										</div>

										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.max-loan') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="maximum_loan_amount" placeholder="{{ __('app.general.max-loan') }}" value="{{ $scheme->maximum_loan_amount ?? '' }}" required>
											</div>
										</div>

										<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
											<div class="form-group">
												<label for="inputName">{{ __('app.general.process-fees') }}</label><span class="text-danger">*</span>
												<input type="text" class="form-control" name="processing_fees" placeholder="{{ __('app.general.process-fees') }}" value="{{ $scheme->processing_fees ?? '' }}" required>
											</div>
										</div>

									</div>
									<!-- Row end -->
								
								</div>
							</div>
							<!-- Card end -->

						</div>
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									
							<!-- Card start -->
							<div class="card">
								<div class="card-header">
									<div class="card-title">{{ __('app.general.interest') }}</div>
								</div>
								<div class="card-body">
									
									<!-- Row start -->
									<div class="row gutters">
										<table class="table table-bordered" id="dynamicTable">  
											<tr>
												<th><input type='checkbox' id="checkedAll"></th>
												<th>{{ __('app.general.from') }}</th>
												<th>{{ __('app.general.to') }}</th>
												<th>{{ __('app.general.type') }}</th>
												<th>{{ __('app.general.interest') }} (%) </th>
												<th>{{ __('app.general.action') }}</th>
											</tr>

											@if( isset($scheme->interests) && count($scheme->interests) > 0)
												@foreach($scheme->interests as $key => $row )   
													<tr>  
														<td><input type='checkbox' disabled></td>
														<td><input type="text" name="interest_rate[{{$key}}][from]" placeholder="1" class="form-control" value="{{ ($row->from) }}" /></td>  
														<td><input type="text" name="interest_rate[{{$key}}][to]" placeholder="30" class="form-control" value="{{ ($row->to) }}" /></td>  
														<td><input type="text" name="interest_rate[{{$key}}][type]" placeholder="days" class="form-control" value="{{ ($row->type) }}" /></td>  
														<td><input type="text" name="interest_rate[{{$key}}][interest_value]" placeholder="18" class="form-control" value="{{ ($row->interest_value) }}" /></td>  
														<td><button type="button" class="btn btn-danger remove-tr"><i class="icon-trash-2"></i></button></td>  
													</tr>  
												@endforeach
													<input type="hidden" id="keyValue" value="{{ $key }}" />
												@else
													<tr>  
														<td><input type='checkbox' disabled></td>
														<td><input type="text" name="interest_rate[0][from]" placeholder="1" class="form-control" /></td>  
														<td><input type="text" name="interest_rate[0][to]" placeholder="30" class="form-control" /></td>  
														<td><input type="text" name="interest_rate[0][type]" placeholder="days" class="form-control" /></td>  
														<td><input type="text" name="interest_rate[0][interest_value]" placeholder="18" class="form-control" /></td>
														<td></td>
													</tr>  
											@endif
											<span id="contact_count" class="d-none"></span>
											<span id="error_count" class="d-none"></span>
										</table> 
										<div class="custom-btn-group">
											<button type="button" name="add" id="add" class="btn btn-success">Add More</button>
											<button type="button" id="deleteButton" disabled class="btn btn-danger delete-row" >Delete Row</button>
										</div>
									</div>
									<!-- Row end -->

								</div>
							</div>
							<!-- Card end -->

						</div>
						<div class="custom-btn-group">
							<button class="btn btn-primary " id="schemeSubmit" type="submit">{{ __('app.general.submit') }}</button>
							<a class="btn btn-secondary" href="{{url('scheme')}}" role="button">{{ __('app.general.cancel') }}</a>
						</div>
					</form>
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
@section('script')
<script type="text/javascript">
	var i = 0;
	$("#add").click(function(){
		$key = $('#keyValue').val();
		
		if( $key != '' && $key > 0) {
			i = $key;
		}
		++i;
		$("#dynamicTable").append('<tr><td><input type="checkbox" class="checkSingle" onchange="toggleCheckbox(this)" name="record"></td>'+
									  '<td><input type="text" id="interest_rate_from_'+i+'" name="interest_rate['+i+'][from]" onblur="nameCheck(this)" placeholder="31" class="form-control" /></td>'+
									  '<td><input type="text" id="interest_rate_to_'+i+'" name="interest_rate['+i+'][to]" placeholder="60" class="form-control" /></td>'+
									  '<td><input type="text" id="interest_rate_type_'+i+'" name="interest_rate['+i+'][type]" placeholder="days" class="form-control" /></td>'+
									  '<td><input type="text" id="interest_rate_iv_'+i+'" name="interest_rate['+i+'][interest_value]" placeholder="18" class="form-control" /></td>'+
									  '<td><button type="button" class="btn btn-danger remove-tr"><i class="icon-trash-2"></i></button></td></tr>');
		$('#keyValue').val(i);					  
	});

	$(document).on('click', '.remove-tr', function(){  
			$(this).parents('tr').remove();
	});  

	$(".delete-row").click(function(){
		$("#checkedAll").prop("checked", false);
		$("table tbody").find('input[name="record"]').each(function(){
			if($(this).is(":checked")){
				$(this).parents("tr").remove();
			}
		});
	});

	$("#checkedAll").change( function() {
		var i = 0;
		if(this.checked) {
		$(".checkSingle").each(function() {
			i++;
			$('#contact_count').text(i);
			this.checked=true;
			$("#deleteButton").prop("disabled", false);
		})              
		} else {
			$(".checkSingle").each(function() {
				$('#contact_count').text(i);
				this.checked=false;
				$("#deleteButton").attr("disabled", true);
			})              
		}
	});

	function toggleCheckbox(element) {
		var isAllChecked = 0;
		var count = $(".checkSingle:checked").length;
		
		$('#contact_count').text(count);

		if( count < 1) {
			$("#deleteButton").prop("disabled", true);
		}

		if (element.checked) {
			var isAllChecked = 0;
			$(".checkSingle").each(function(){
				if(!this.checked) {
					isAllChecked = 1;
					$("#deleteButton").prop("disabled", false); 
				}
			})              
			if(isAllChecked == 0) { 
				$("#checkedAll").prop("checked", true);
			}     
		} else {
			$("#checkedAll").prop("checked", false);
		}
		
	}

	function nameCheck(_input) {  
		var x = _input;
		var value = $("#error_count").html();
		if(x.value == '') {
			$("#"+x.id).css("border","2px solid red");
			$("#error_count").html(Number(value)+1);
		} else {
			$("#"+x.id).css("border","");
			$("#error_count").html(Number(value)-1);
		}

		/* if( error_count <= 0) {
			$("#schemeSubmit").removeClass('disabled');
		} else {
			$("#schemeSubmit").addClass('disabled');
		} */
		
	}  
		
</script>
@endsection