@extends('layouts.default')
@section('title')
    {{ __('app.goldloan.title') }}
@stop
<!-- Container fluid start -->
@section('content')
	<!-- ** Main container start ** -->
	<div class="main-container">

		<!-- Page header start -->
		<div class="page-header">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="{{url('goldloan')}}" >
						{{ __('app.goldloan.title') }}
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
					<a href="{{url('goldloan')}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.general.back') }}">
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
						<div id="example-form">
							<h3>{{ __('app.goldloan.appinfo') }}</h3>
							<section>
								<div class="row gutters">
									<!-- Row start -->
									<div class="row gutters">
										<form id="contactFrom" role="form" method="POST"
											action="{{ isset($goldloan) ? route('goldloan.update',$goldloan->id) : route('goldloan.create') }}" >
												@csrf
											@isset($goldloan)
												@method('PUT')
											@endisset
											<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
												<!-- Card start -->
												<div class="card">
													<div class="card-header">
														<div class="card-title">
															{{ __('app.goldloan.mdetails') }}
														</div>
													</div>
													<div class="card-body">
														
														<!-- Row start -->
														<div class="row gutters">
															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.mname') }}</label><span class="text-danger">*</span>
																	<input type="text" class="form-control customercode" name="customer_code" placeholder="{{ __('app.general.mname') }}" value="" required>
																	<input type="hidden" name="customer_id" id="hidden_customer_id" value="{{ $goldloan->customer_id ?? '' }}" >
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.mid') }}</label>
																	<input type="text" class="form-control" id="hidden_customer_code" name="name" placeholder="{{ __('app.general.mid') }}" value="{{ $goldloan->customer->name ?? '' }}" readonly>
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12 d-none">
																<div class="form-group">
																	<label for="inputName">{{ __('app.goldloan.co-id') }}</label>
																	<input type="text" class="form-control" name="name" placeholder="{{ __('app.goldloan.co-id') }}" value="{{ $goldloan->coapplicant_id ?? '' }}">
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12 d-none">
																<div class="form-group">
																	<label for="inputName">{{ __('app.goldloan.co-name') }}</label>
																	<input type="text" class="form-control" name="name" placeholder="{{ __('app.goldloan.co-name') }}" value="{{ $goldloan->coapplicant_id ?? '' }}" >
																</div>
															</div>

														</div>
														<!-- Row end -->
													
													</div>
												</div>
												<!-- Card start -->
												<div class="card">
													<div class="card-header">
														<div class="card-title">
															{{ __('app.goldloan.ndetails') }}
														</div>
													</div>
													<div class="card-body">
														
														<!-- Row start -->
														<div class="row gutters">
															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.name') }}</label><span class="text-danger">*</span>
																	<input type="text" class="form-control itemname" id="hidden_nominee_name" name="nominee_name" placeholder="{{ __('app.general.name') }}" value="{{ $goldloan->nominee_name ?? '' }}" required>
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.relation') }}</label>
																	<input type="text" class="form-control" id="hidden_nominee_relation" name="nominee_relation" placeholder="{{ __('app.general.relation') }}" value="{{ $goldloan->nominee_relation ?? '' }}">
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.dob') }}</label>
																	<input type="date" class="form-control" id="hidden_nominee_dob" name="nominee_dob" placeholder="{{ __('app.general.dob') }}" value="{{ $goldloan->nominee_dob ?? '' }}">
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.age') }}</label>
																	<input type="text" class="form-control" id="hidden_nominee_age" name="nominee_age" placeholder="{{ __('app.general.age') }}" value="{{ $goldloan->nominee_age ?? '' }}" >
																</div>
															</div>

														</div>
														<!-- Row end -->
													
													</div>
												</div>
												<!-- Card end -->

												<!-- Card start -->
												<div class="card">
													<div class="card-header">
														<div class="card-title">
															{{ __('app.goldloan.ldetails') }}
														</div>
													</div>
													<div class="card-body">
														
														<!-- Row start -->
														<div class="row gutters">
															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.pay-basis') }}</label><span class="text-danger">*</span>
																	<select class="form-control" name="payment_ref_id" id="payment_ref_id">
																		<!-- <option>Select</option> -->
																		@if( isset($goldloan->payment_ref_id) && $goldloan->payment_ref_id !='')         
																			<option value="1" {{ $goldloan->payment_ref_id == '1' ? 'selected="selected"' : '' }} >Interest</option>
																			<option value="2" {{ $goldloan->payment_ref_id == '2' ? 'selected="selected"' : '' }} >EMI</option>
																		@else
																			<option value="1">Interest</option>
																			<option value="2">EMI</option>
																		@endif
																	</select>
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.selectscheme') }}</label>
																	<input type="text" class="form-control schemename" name="selectscheme" placeholder="{{ __('app.general.selectscheme') }}" value="{{ $goldloan->scheme_ref_id ?? '' }}">
																	<input type="hidden" name="scheme_ref_id" id="hidden_scheme_id" value="{{ $goldloan->scheme_ref_id ?? '0' }}" >
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.tenure') }}</label>
																	<input type="text" class="form-control" id="hidden_tenure" name="tenure" placeholder="{{ __('app.general.tenure') }}" value="{{ $goldloan->tenure ?? '' }}">
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.ir') }}</label>
																	<input type="text" class="form-control" id="hidden_interest_rate" name="interest_rate" placeholder="{{ __('app.general.ir') }}" value="{{ $goldloan->interest_rate ?? '' }}" >
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.install-frequency') }}</label><span class="text-danger">*</span>
																	<select class="form-control" name="frequency" id="frequency">
																		<option>Select</option>
																		@if( isset($goldloan->frequency) && $goldloan->frequency !='')         
																			<option value="1" {{ $goldloan->frequency == '1' ? 'selected="selected"' : '' }} >Daily</option>
																			<option value="2" {{ $goldloan->frequency == '2' ? 'selected="selected"' : '' }} >Weekly</option>
																			<option value="3" {{ $goldloan->frequency == '3' ? 'selected="selected"' : '' }} >Monthly</option>
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
																	<label for="inputName">{{ __('app.general.loan-amount') }}</label>
																	<input type="text" class="form-control" name="loan_amount" placeholder="{{ __('app.general.loan-amount') }}" value="{{ $goldloan->loan_amount ?? '' }}">
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.loan-no') }}</label>
																	<input type="text" class="form-control" name="loan_no" placeholder="{{ __('app.general.loan-no') }}" value="{{ $goldloan->loan_no ?? '' }}">
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.loan-date') }}</label>
																	<input type="date" class="form-control" name="loan_date" placeholder="{{ __('app.general.loan-date') }}" value="{{ $goldloan->loan_date ?? '' }}">
																</div>
															</div>

															<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
																<div class="form-group">
																	<label for="inputName">{{ __('app.general.irt') }}</label><span class="text-danger">*</span>
																	<select class="form-control" name="interest_type" id="interest_type">
																		<option>Select</option>
																		@if( isset($goldloan->interest_type) && $goldloan->interest_type !='')         
																			<option value="1" {{ $goldloan->interest_type == '1' ? 'selected="selected"' : '' }} >Daily</option>
																		@else
																			<option value="1" >Flat</option>
																		@endif
																	</select>
																</div>
															</div>

														</div>
														<!-- Row end -->
													
													</div>
												</div>
												<!-- Card end -->
											</div>
											<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 d-none" id="schemeDetails">
														
												<!-- Card start -->
												<div class="card">
													<div class="card-header">
														<div class="card-title">{{ __('app.general.scheme-details') }}</div>
													</div>
													<div class="card-body">
														
														<!-- Row start -->
														<div class="row gutters">
															<table class="table table-bordered" id="dynamicTable1">  
																<tr>  
																	<td>{{ __('app.general.pay-frequency') }}</td>
																	<td id="hidden_pay_frequency">-</td>  
																	<td>{{ __('app.general.pay-advance') }}</td>  
																	<td id="hidden_pay_advance">-</td>
																	<td>{{ __('app.general.pay-basis') }}</td>
																	<td id="hidden_pay_basis">-</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.min-loan') }}</td>
																	<td id="hidden_min_loan">-</td>  
																	<td>{{ __('app.general.max-loan') }}</td>  
																	<td id="hidden_max_loan">-</td>
																	<td>{{ __('app.general.document-chrg') }}</td>
																	<td id="hidden_document_chrg">-</td>  
																</tr>
																<tr>  
																	<td  id="hidden_loyalty">{{ __('app.general.loyalty') }}</td>  
																	<td>-</td>
																	<td></td>
																	<td></td>
																	<td></td>
																	<td></td>
																</tr>
															</table> 
														</div>
														<!-- Row end -->

													</div>
												</div>
												<!-- Card end -->

											</div>
											<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 d-none" id="interestDetails">
														
												<!-- Card start -->
												<div class="card">
													<div class="card-header">
														<div class="card-title">{{ __('app.general.ir') }}</div>
													</div>
													<div class="card-body">
														
														<!-- Row start -->
														<div class="row gutters">
															<table class="table table-bordered" id="interestTable">  
																<tr>
																	<th>{{ __('app.general.terms') }}</th>
																	<th>{{ __('app.general.ir') }}</th>
																</tr>
																<!-- <tr>  
																	<td>0 to 30 days</td>
																	<td>15.00%</td>  
																</tr>  
																<tr>  
																	<td>0 to 30 days</td>
																	<td>15.00%</td>  
																</tr>  -->
															</table> 
														</div>
														<!-- Row end -->

													</div>
												</div>
												<!-- Card end -->

											</div>
											<!-- <div class="custom-btn-group">
												<button class="btn btn-primary " id="goldloanSubmit" type="submit">{{ __('app.general.submit') }}</button>
												<a class="btn btn-secondary" href="{{url('goldloan')}}" role="button">{{ __('app.general.cancel') }}</a>
											</div> -->
										</form>
									</div>
									<!-- Row end -->
								</div>
							</section>
							<h3>{{ __('app.goldloan.additems') }}</h3>
							<section>
								<div class="row gutters">
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
														<th>{{ __('app.group.item-grp') }}</th>
														<th>{{ __('app.item.formtitle') }}</th>
														<th>{{ __('app.item.noof-items') }}</th>
														<th>{{ __('app.goldloan.selecttype') }}</th>
														<th>{{ __('app.goldloan.purity') }}</th>
														<th>{{ __('app.goldloan.grwt') }} ( {{ __('app.general.gms') }} ) </th>
														<th>{{ __('app.goldloan.stwt') }}</th>
														<th>{{ __('app.general.nwt') }}</th>
														<th>{{ __('app.general.currate') }}{{ __('app.general.pergm') }}</th>
														<th>{{ __('app.goldloan.lend-rate') }}{{ __('app.general.pergm') }}</th>
														<th>{{ __('app.goldloan.nwtvalue') }}</th>
														<th>{{ __('app.goldloan.remarks') }}</th>
														<th>{{ __('app.general.action') }}</th>
													</tr>
													<tr>  
														<td><input type='checkbox' disabled></td>
														<td><input type="text" id="add_items_group_id_0" name="add_items[0][group_id]" placeholder="{{ __('app.group.item-grp') }}" data-id='0' onkeyup="nameCheck(this)" class="form-control" />
															<input type="hidden" name="groupId[]" id="groupId_0" value=""></td>  
														<td><input type="text" id="add_items_item_id_0" name="add_items[0][item_id]" placeholder="{{ __('app.item.formtitle') }}"  data-id='0' class="form-control" /></td>  
														<td><input type="text" id="add_items_noof_items_0" name="add_items[0][noof_items]" placeholder="0"  data-id='0' class="form-control" /></td>  
														<td><input type="text" id="add_items_gold_type_0" name="add_items[0][gold_type]" placeholder="Karrot"  data-id='0' class="form-control" /></td>  
														<td><input type="text" id="add_items_purity_in_karrot_0" name="add_items[0][purity_in_karrot]" placeholder="0.00"  data-id='0' class="form-control" /></td>  
														<td><input type="text" id="add_items_gross_weight_0" name="add_items[0][gross_weight]" placeholder="0.00" class="form-control" data-id='0' onkeyup="calculate(this)"  /></td>  
														<td><input type="text" id="add_items_stone_weight_0" name="add_items[0][stone_weight]" placeholder="0.00"  data-id='0' class="form-control" /></td>  
														<td><input type="text" id="add_items_net_weight_0" name="add_items[0][net_weight]" placeholder="0.00" data-id='0' class="form-control" /></td>  
														<td><input type="text" id="add_items_current_gold_rate_0" name="add_items[0][current_gold_rate]" data-id='0' placeholder="0.00" class="form-control" value="2000" /></td>  
														<td><input type="text" id="add_items_lending_gold_rate_0" name="add_items[0][lending_gold_rate]" placeholder="0.00"  data-id='0' class="form-control" /></td>  
														<td><input type="text" id="add_items_net_weight_value_0" name="add_items[0][net_weight_value]" data-id='0' placeholder="0.00" class="form-control totalprice" /></td> 
														<td><input type="text" id="add_items_remarks_0" name="add_items[0][remarks]" placeholder="{{ __('app.goldloan.remarks') }}" class="form-control" /></td> 
														<td></td> 
													</tr>  
												</table> 
												<span id="totalAmount"></span>
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
							</section>
							<h3>{{ __('app.goldloan.sendapproval') }}</h3>
							<section>
								<div class="row gutters">
									<!-- Row start -->
									<div class="row gutters">
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
													
											<!-- Card start -->
											<div class="card">
												<div class="card-header">
													<div class="card-title">{{ __('app.goldloan.gla-details') }}</div>
												</div>
												<div class="card-body">
													
													<!-- Row start -->
													<div class="row gutters">
														<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
															<table class="table table-bordered" id="dynamicTable12" >  
																<tr>  
																	<td>{{ __('app.general.loan-no') }}</td>
																	<td>:</td>  
																	<td>200</td>
																</tr>
																<tr>  
																	<td>{{ __('app.goldloan.grwt') }}</td>
																	<td>:</td>  
																	<td>40.00</td>
																</tr>
																<tr>  
																	<td>{{ __('app.goldloan.nwt') }}</td>
																	<td>:</td>  
																	<td>40.00</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.appraiser') }} </td>
																	<td>:</td>  
																	<td>User</td>
																</tr>
																<tr>  
																	<td>{{ __('app.goldloan.lending') }} ( % ) </td>
																	<td>:</td>  
																	<td>85</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.pay-basis') }} </td>
																	<td>:</td>  
																	<td>Interest</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.tenure') }} </td>
																	<td>:</td>  
																	<td>24</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.pay-frequency') }} </td>
																	<td>:</td>  
																	<td>Daily</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.amt-sanction') }} </td>
																	<td>:</td>  
																	<td>85000.00</td>
																</tr>
															</table> 
														</div>
														<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
															<table class="table table-bordered" id="dynamicTable12" >  
																<tr>  
																	<td>{{ __('app.general.loan-date') }}</td>
																	<td>:</td>  
																	<td>11/04/2022</td>
																</tr>
																<tr>  
																	<td>{{ __('app.goldloan.stwt') }}</td>
																	<td>:</td>  
																	<td>1.00</td>
																</tr>
																<tr>  
																	<td>{{ __('app.goldloan.nwtvalue') }}</td>
																	<td>:</td>  
																	<td>120000.00</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.req-loan-amount') }}</td>
																	<td>:</td>  
																	<td>100000.00</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.eligible-amount') }}</td>
																	<td>:</td>  
																	<td>100000.00</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.appraise-code') }}</td>
																	<td>:</td>  
																	<td>12345</td>
																</tr>
																<tr>  
																	<td>{{ __('app.scheme.formtitle') }}</td>
																	<td>:</td>  
																	<td>1 yr Loan</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.ir') }}</td>
																	<td>:</td>  
																	<td>12%</td>
																</tr>
																<tr>  
																	<td>{{ __('app.general.irt') }}</td>
																	<td>:</td>  
																	<td>Flat</td>
																</tr>
															</table> 
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
													<div class="card-title">{{ __('app.general.scheme-details') }}</div>
												</div>
												<div class="card-body">
													
													<!-- Row start -->
													<div class="row gutters">
														<table class="table table-bordered" id="dynamicTable1">  
															<tr>  
																<td>{{ __('app.general.pay-frequency') }}</td>
																<td>1</td>  
																<td>{{ __('app.general.pay-advance') }}</td>  
																<td>no</td>
																<td>{{ __('app.general.pay-basis') }}</td>
																<td>1</td>
															</tr>
															<tr>  
																<td>{{ __('app.general.min-loan') }}</td>
																<td>1000</td>  
																<td>{{ __('app.general.max-loan') }}</td>  
																<td>20000</td>
																<td>{{ __('app.general.tenure') }}</td>
																<td>12</td>
															</tr>
															<tr>  
																<td>{{ __('app.general.document-chrg') }}</td>
																<td>100</td>  
																<td>{{ __('app.general.loyalty') }}</td>  
																<td>12</td>
																<td></td>
																<td></td>
															</tr>
														</table> 
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
													<div class="card-title">{{ __('app.general.ir') }}</div>
												</div>
												<div class="card-body">
													
													<!-- Row start -->
													<div class="row gutters">
														<table class="table table-bordered" id="dynamicTable2">  
															<tr>
																<th>{{ __('app.general.terms') }}</th>
																<th>{{ __('app.general.ir') }}</th>
															</tr>
															<tr>  
																<td>0 to 30 days</td>
																<td>15.00%</td>  
															</tr>  
															<tr>  
																<td>0 to 30 days</td>
																<td>15.00%</td>  
															</tr> 
														</table> 
													</div>
													<!-- Row end -->

												</div>
											</div>
											<!-- Card end -->

										</div>
									</div>
									<!-- Row end -->
								</div>
							</section>
						</div>
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
@section('script')
<script type="text/javascript">
	var i = 0;
	$("#add").click(function(){
		$key = $('#keyValue').val();
		
		if( $key != '' && $key > 0) {
			i = $key;
		}
		++i;
		$("#dynamicTable").append('<tr><td><input type="checkbox" class="checkSingle" name="record"  onchange="toggleCheckbox(this)"></td>'+
									  '<td><input type="text" id="add_items_group_id_'+i+'" name="add_items['+i+'][group_id]" data-id='+i+' onkeyup="nameCheck(this)" placeholder="{{ __('app.group.item-grp') }}" class="form-control" />'+
									  '<input type="hidden" name="groupId[]" id="groupId_'+i+'" value=""></td>'+
									  '<td><input type="text" id="add_items_item_id_'+i+'" name="add_items['+i+'][item_id]" data-id='+i+' placeholder="{{ __('app.item.formtitle') }}" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_noof_items_'+i+'" name="add_items['+i+'][noof_items]" data-id='+i+' placeholder="0" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_gold_type_'+i+'" name="add_items['+i+'][gold_type]" data-id='+i+' placeholder="Karrot" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_purity_in_karrot_'+i+'" name="add_items['+i+'][purity_in_karrot]" data-id='+i+' placeholder="0.00" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_gross_weight_'+i+'" name="add_items['+i+'][gross_weight]" data-id='+i+' onkeyup="calculate(this)" placeholder="0.00" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_stone_weight_'+i+'" name="add_items['+i+'][stone_weight]" data-id='+i+' placeholder="0.00" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_net_weight_'+i+'" name="add_items['+i+'][net_weight]" data-id='+i+' placeholder="0.00" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_current_gold_rate_'+i+'" name="add_items['+i+'][current_gold_rate]" value="1000" data-id='+i+' placeholder="0.00" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_lending_gold_rate_'+i+'" name="add_items['+i+'][lending_gold_rate]" data-id='+i+' placeholder="0.00" class="form-control" /></td>'+
									  '<td><input type="text" id="add_items_net_weight_value_'+i+'" name="add_items['+i+'][net_weight_value]" data-id='+i+' placeholder="0.00" class="form-control totalprice" /></td>'+
									  '<td><input type="text" id="add_items_remarks_'+i+'" name="add_items['+i+'][remarks]" data-id='+i+' placeholder="{{ __('app.goldloan.remarks') }}" class="form-control" /></td>'+
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

	/* function nameCheck(_input) {  
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
			$("#goldloanSubmit").removeClass('disabled');
		} else {
			$("#goldloanSubmit").addClass('disabled');
		} */
		
	// }   */

	function nameCheck(_input) {  
		var x = _input;
		// console.log($("#"+x.id).val());
		var dataId = $("#"+x.id).data("id");

		$("#"+x.id).typeahead({
			source: function(query, process) {
				var path = "{{url('autocomplete-search')}}";
				$.get(path, { query: query }, function (data) {
					if(!data.length) {
						// $("#schemeSubmit").addClass('disabled');
					}
					process(data);
				});
			},
			updater: function(item) {

				$("#schemeSubmit").removeClass('disabled');

				if( item.id != '' ) {
					console.log(item);

					$("#add_items_current_gold_rate_"+dataId).val(item.name);
					$('#groupId_'+dataId).val(item.id);
					
					return item;
				}
			}
		});
	}  

	function calculate(_input) {  
		var x = _input;
		
		var dataId 				= $("#"+x.id).data("id");
		var grossWeight 		= x.value;
		var current_gold_rate 	= Number($("#add_items_current_gold_rate_"+dataId).val());
		
		var netValue 			= grossWeight * current_gold_rate;
		$("#add_items_net_weight_value_"+dataId).val(netValue);

		var sum = 0;
        var total = $('.totalprice').val();
        $('.totalprice').each(function()
        {
            sum += parseInt(this.value);
        });
        $('#totalAmount').html(sum.toFixed(2));
	}

</script>
@endsection