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

				<!-- submitModal -->
				<div class="modal fade" id="glModalSubmit" tabindex="-1" role="dialog" aria-labelledby="customModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="customModalLabel">{{ __('app.goldloan.create-title') }}</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
								<div class="modal-body">
									<div class="text-center">
										<p class="mb-3">{{ __('app.general.addMessage') }}</p>
									</div>
								</div>
								<div class="modal-footer custom">
									<div class="left-side">
										<button type="button" class="btn btn-link danger" data-dismiss="modal">{{ __('app.general.cancel') }}</button>
									</div>
									<div class="divider"></div>
									<div class="right-side">
										<button type="submit" onclick = "glSubmitForm()" class="btn btn-link success">{{ __('app.general.submit') }}</button>
									</div>
								</div>
						</div>
					</div>
				</div>
				<!-- submitModal End-->
				<!-- Row start -->
				<div class="row gutters">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div id="example-form">

							<h3>{{ __('app.goldloan.appinfo') }}</h3>
							<section>
								<!-- Row start -->
								<div class="row gutters">
									<form id="glFrom" method="POST" action="#"  >

										<input type="hidden" id="hiddenGlId" value=" {{ $goldloan->id ?? '' }} ">
										<input type="hidden" id="hiddenUrl" value="{{ isset($goldloan) ? route('goldloan.update',$goldloan->id) : route('goldloan.create') }}">

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
																<input type="text" class="form-control customercode" name="customer_code" autocomplete="off" placeholder="{{ __('app.general.mname') }}" value="" required>
																<input type="hidden" name="customer_id" id="hidden_customer_id" value="{{ $goldloan->customer_id ?? '' }}" >
															</div>
														</div>

														<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
															<div class="form-group">
																<label for="inputName">{{ __('app.general.mid') }}</label>
																<input type="text" class="form-control" id="hidden_customer_code" name="name" placeholder="{{ __('app.general.mid') }}" value="{{ $goldloan->customer->name ?? '' }}" readonly>
															</div>
														</div>

														<!-- <div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12 d-none">
															<div class="form-group">
																<label for="inputName">{{ __('app.goldloan.co-id') }}</label>
																<input type="text" class="form-control" placeholder="{{ __('app.goldloan.co-id') }}" value="{{ $goldloan->coapplicant_id ?? '' }}">
															</div>
														</div>

														<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12 d-none">
															<div class="form-group">
																<label for="inputName">{{ __('app.goldloan.co-name') }}</label>
																<input type="text" class="form-control" placeholder="{{ __('app.goldloan.co-name') }}" value="{{ $goldloan->coapplicant_id ?? '' }}" >
															</div>
														</div>-->

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
																<label for="inputName">{{ __('app.general.name') }}</label>
																<input type="text" class="form-control itemname" id="hidden_nominee_name" readonly placeholder="{{ __('app.general.name') }}" value="{{ $goldloan->nominee_name ?? '' }}" required>
															</div>
														</div>

														<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
															<div class="form-group">
																<label for="inputName">{{ __('app.general.relation') }}</label>
																<input type="text" class="form-control" id="hidden_nominee_relation" readonly placeholder="{{ __('app.general.relation') }}" value="{{ $goldloan->nominee_relation ?? '' }}">
															</div>
														</div>

														<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
															<div class="form-group">
																<label for="inputName">{{ __('app.general.dob') }}</label>
																<input type="date" class="form-control" id="hidden_nominee_dob" readonly placeholder="{{ __('app.general.dob') }}" value="{{ $goldloan->nominee_dob ?? '' }}">
															</div>
														</div>

														<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
															<div class="form-group">
																<label for="inputName">{{ __('app.general.age') }}</label>
																<input type="text" class="form-control" id="hidden_nominee_age" readonly placeholder="{{ __('app.general.age') }}" value="{{ $goldloan->nominee_age ?? '' }}" >
															</div>
														</div>

													</div>
													<!-- Row end -->
												
												</div>
											</div>
											<!-- Card end -->

											<!-- Card start -->
											<div class="card d-none" id="gl_card">
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
																<input type="text" class="form-control schemename" autocomplete = "off" name="schemeName" placeholder="{{ __('app.general.selectscheme') }}" value="{{ $goldloan->scheme_ref_id ?? '' }}">
																<input type="hidden" name="scheme_ref_id" id="hidden_scheme_id" value="{{ $goldloan->scheme_ref_id ?? '0' }}" >
																<input type="hidden" class="hidden_lend_rate" id="hidden_lend_rate" value="" >
															</div>
														</div>

														<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
															<div class="form-group">
																<label for="inputName">{{ __('app.general.tenure') }}</label>
																<input type="text" class="form-control" id="hidden_tenure" placeholder="{{ __('app.general.tenure') }}" readonly value="{{ $goldloan->tenure ?? '' }}">
															</div>
														</div>

														<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
															<div class="form-group">
																<label for="inputName">{{ __('app.general.ir') }}</label>
																<input type="text" class="form-control" id="hidden_interest_rate" placeholder="{{ __('app.general.ir') }}" readonly value="{{ $goldloan->interest_rate ?? '' }}" >
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
																<input type="text" class="form-control" name="loan_amount" placeholder="{{ __('app.general.loan-amount') }}" onkeyup="copyReqLoan(this)" value="{{ $goldloan->loan_amount ?? '' }}">
															</div>
														</div>

														<!-- <div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12 d-none">
															<div class="form-group">
																<label for="inputName">{{ __('app.general.loan-no') }}</label>
																<input type="text" class="form-control" placeholder="{{ __('app.general.loan-no') }}" value="{{ $goldloan->loan_no ?? '' }}">
															</div>
														</div> -->

														<div class="col-xl-3 col-lglg-3 col-md-3 col-sm-3 col-12">
															<div class="form-group">
																<label for="inputName">{{ __('app.general.loan-date') }}</label>
																<input type="date" class="form-control" name="loan_date" placeholder="{{ __('app.general.loan-date') }}" onchange="selectDate(this)" value="{{ $goldloan->loan_date ?? '' }}">
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
														<table class="table" id="dynamicTable1">  
															<tr>  
																<td class="bt-0">{{ __('app.general.pay-frequency') }}</td>
																<td class="hidden_pay_frequency bt-0">-</td>  
																<td class="bt-0">{{ __('app.general.pay-advance') }}</td>  
																<td class="hidden_pay_advance bt-0">-</td>
																<td class="bt-0">{{ __('app.general.pay-basis') }}</td>
																<td class="hidden_pay_basis bt-0">-</td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.min-loan') }}</td>
																<td class="hidden_min_loan bt-0">-</td>  
																<td class="bt-0">{{ __('app.general.max-loan') }}</td>  
																<td class="hidden_max_loan bt-0">-</td>
																<td class="bt-0">{{ __('app.general.document-chrg') }}</td>
																<td class="hidden_document_chrg bt-0">-</td>  
															</tr>
															<tr>  
																<td class="hidden_loyalty bt-0">{{ __('app.general.loyalty') }}</td>  
																<td class="bt-0">-</td>
																<td class="bt-0"></td>  
																<td class="bt-0"></td>
																<td class="bt-0"></td>
																<td class="bt-0"></td>
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
														<table class="table table-bordered interestTable" id="interestTable">  
															<tr>
																<th>{{ __('app.general.terms') }}</th>
																<th>{{ __('app.general.ir') }} ( % ) </th>
															</tr>
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
							</section>
							
							<h3>{{ __('app.goldloan.additems') }}</h3>
							<section>
								<div class="row gutters">
									<!-- Card start -->
									<div class="card">
										<div class="card-header">
											<div class="card-title">{{ __('app.goldloan.itemdetail') }}</div>
										</div>
										<div class="card-body">
										<form action="#" method="get" id="glItemsFrom">
											<!-- Row start -->
											<div class="row gutters">
												
												<div class="col-xl-8 col-lglg-8 col-md-8 col-sm-6 col-12">
												</div>
												<div class="col-xl-2 col-lglg-2 col-md-2 col-sm-6 col-6">
													<div class="form-group">
														<label for="inputName">{{ __('app.general.currate') }} {{ __('app.general.pergm') }}</label>
														<input type="text" class="form-control hidden_group_gold_rate" id="hidden_group_gold_rate" value="" readonly >
														<input type="hidden" class="hidden_group_ref_id" id="hidden_group_ref_id" value=""  >
													</div>
												</div>
												<div class="col-xl-2 col-lglg-2 col-md-2 col-sm-6 col-6">
													<div class="form-group">
														<label for="inputName">{{ __('app.goldloan.lend-rate') }} {{ __('app.general.pergm') }}</label>
														<input type="text" class="form-control hidden_lend_rate" id="hidden_lend_rate" value="" readonly >
													</div>
												</div>

												<table class="table table-bordered" id="dynamicTable">  
													<tr>
														<th><input type='checkbox' id="checkedAll"></th>
														<!-- <th style="width: 90px;">{{ __('app.group.item-grp') }}</th> -->
														<th style="width: 90px;">{{ __('app.item.formtitle') }}</th>
														<th>{{ __('app.item.noof-items') }}</th>
														<th style="width: 90px;">{{ __('app.goldloan.selecttype') }}</th>
														<th style="width: 90px;">{{ __('app.goldloan.purity') }}</th>
														<th>{{ __('app.goldloan.grwt') }} {{ __('app.general.gms') }}</th>
														<th>{{ __('app.goldloan.stwt') }} {{ __('app.general.gms') }}</th>
														<th>{{ __('app.general.nwt') }} {{ __('app.general.gms') }}</th>
														<!-- <th style="width: 90px;">{{ __('app.general.currate') }} {{ __('app.general.pergm') }}</th> -->
														<th style="width: 90px;">{{ __('app.general.perc-deduction') }} {{ __('app.general.gms') }}</th>
														<!-- <th style="width: 90px;">{{ __('app.goldloan.lend-rate') }}{{ __('app.general.pergm') }}</th> -->
														<th style="width: 90px;">{{ __('app.goldloan.nwtvalue') }}</th>
														<th>{{ __('app.goldloan.remarks') }}</th>
														<th style="width: 20px;">{{ __('app.general.action') }}</th>
													</tr>
													<tr>  
														<td><input type='checkbox' disabled></td>
														<!-- <td><input type="text" id="add_items_group_name_0" name="add_items[0][group_name]" placeholder="{{ __('app.group.item-grp') }}" data-id='0' onkeyup="searchByGroup(this)" onmouseenter="searchByGroup(this)" class="form-control group-name" />
															<input type="hidden" id="groupId_0" name="add_items[0][group_id]" value=""></td>   -->
														<td><input type="text" id="add_items_item_name_0" name="add_items[0][item_name]" placeholder="{{ __('app.item.formtitle') }}"  data-id='0' class="form-control" onkeypress="searchByItem(this)" />
															<input type="hidden" id="itemId_0" name="add_items[0][item_id]" value=""></td>  
														<td><input type="text" id="add_items_noof_items_0" name="add_items[0][noof_items]" placeholder="0"  data-id='0' class="form-control" /></td>  
														<td><select type="text" id="add_items_gold_type_0" name="add_items[0][gold_type]" data-id='0' class="form-control" onchange="checkPurity(this)">
																<option value="">Select</option>
																<option value="1">Karat</option>
																<option value="2">Percentage</option>
															</select></td>
														<td id="purity_type_0"><input type="text" class="form-control" readonly /></td>  
														<td><input type="text" id="add_items_gross_weight_0" name="add_items[0][gross_weight]" placeholder="0.00" class="form-control totalGrossWt" data-id='0' onkeyup="calculate(this)"  />
															<input type="hidden" name="add_items[0][purity_karat_value]" id="purity_karat_value_0" value=""></td>  
														<td><input type="text" id="add_items_stone_weight_0" name="add_items[0][stone_weight]" placeholder="0.00"  data-id='0' class="form-control totalStoneWt" onkeyup="calculate(this)" /></td>  
														<td><input type="text" id="add_items_net_weight_0" name="add_items[0][net_weight]" placeholder="0.00" data-id='0' class="form-control totalNetWt" readonly />
															<input type="hidden" id="add_items_wo_deduct_value_0" name="add_items[0][wo_deduct_value]" data-id='0' class="form-control toatlWoNetValue" value="" /></td>    
														<!-- <td><input type="text" id="add_items_current_gold_rate_0" name="add_items[0][current_gold_rate]" data-id='0' placeholder="0.00" class="form-control" value="" readonly /> -->
														<td><input type="text" id="add_items_deduct_value_0" name="add_items[0][deduct_value]" data-id='0' placeholder="0.00" class="form-control toatlDeductNetWt" value="" readonly />
															<input type="hidden" id="add_items_deduct_gold_value_0" name="add_items[0][deduct_gold_value]" data-id='0'  class="form-control toatlDeductNetWtValue"  value="" /></td>  
														<!-- <td><input type="text" id="add_items_lending_gold_rate_0" name="add_items[0][lending_gold_rate]" placeholder="0.00"  data-id='0' class="form-control" readonly /></td>   -->
														<td><input type="text" id="add_items_net_weight_value_0" name="add_items[0][net_weight_value]" data-id='0' placeholder="0.00" class="form-control netAmountValue" readonly /></td> 
														<td><input type="text" id="add_items_remarks_0" name="add_items[0][remarks]" placeholder="{{ __('app.goldloan.remarks') }}" class="form-control" /></td> 
														<td><button type="button" class="btn btn-info clear-row" data-id='0' ><i class="icon-circle-with-cross"></i></button></td> 
													</tr>  
												</table> 
												<!-- <div class="custom-btn-group">
													<button type="button" name="add" id="add" class="btn btn-success">Add More</button>
													<button type="button" id="deleteButton" disabled class="btn btn-danger delete-row" >Delete Row</button>
												</div> -->
											</div>
											<!-- Row start -->
											<div class="row gutters">
												<div class="col-xl-8 col-lg-8 col-md-8 col-sm-12 col-12">
													<div class="">
														<button type="button" name="add" id="add" class="btn btn-info">Add More</button>
														<button type="button" id="deleteButton" disabled class="btn btn-danger delete-row" >Delete Row</button>
													</div>
												</div>
												<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
													<table class="table" id="dynamicTable12" >  
														<tr>  
															<td class="bt-0">{{ __('app.general.total') }} {{ __('app.goldloan.grwt') }} {{ __('app.general.gms') }} </td>
															<td class="totalGrossValue bt-0" align="right">0.00</td>
														</tr>
														<tr>  
															<td class="bt-0"> {{ __('app.general.total') }} {{ __('app.goldloan.stwt') }} {{ __('app.general.gms') }} </td>
															<td class="totalStoneValue bt-0" align="right">0.00</td>
														</tr>
														<tr>  
															<td class="bt-0">{{ __('app.general.total') }} {{ __('app.general.nwt') }} {{ __('app.general.gms') }}</td>
															<td class="totalNetValue bt-0" align="right">0.00</td>
														</tr>
														<tr>  
															<td class="bt-0">{{ __('app.general.total') }} {{ __('app.general.perc-deduction') }} {{ __('app.general.gms') }}</td>
															<td class="totalDeductValue bt-0" align="right">0.00</td>
														</tr>
														<tr>  
															<td class="bt-0"> {{ __('app.goldloan.vnwt') }}</td>
															<td class="woNetAmountValue bt-0" align="right">0.00</td>
														</tr>
														<tr>  
															<td class="bt-0">{{ __('app.general.total') }} {{ __('app.general.dnwt') }}</td>
															<td class="totalDeductAmount bt-0" align="right">0.00</td>
														</tr>
														<tr>  
															<td class="bt-0">{{ __('app.general.total') }} {{ __('app.goldloan.nwtvalue') }}</td>
															<td class="totalNetAmount bt-0" align="right">0.00</td>
														</tr>
													</table>
												</div>
											</div>
											<!-- Row end -->
										</form>
										</div>
									</div>
									<!-- Card end -->
								</div>
							</section>

							<h3>{{ __('app.goldloan.glapproval') }}</h3>
							<section>
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
														<table class="table" id="dynamicTable12" >  
															<tr>  
																<td class="bt-0">{{ __('app.scheme.formtitle') }}</td>
																<td class="bt-0">:</td>  
																<td class="hidden_scheme_name bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.goldloan.grwt') }}</td>
																<td class="bt-0">:</td>  
																<td class="totalGrossValue bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.nwt') }}</td>
																<td class="bt-0">:</td>  
																<td class="totalNetValue bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.req-loan-amount') }}</td>
																<td class="bt-0">:</td>  
																<td class="req_loan_amount bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.appraiser') }} </td>
																<td class="bt-0">:</td>  
																<td class="bt-0">{{ auth()->id() }}</td>
															</tr>
															<!-- <tr>  
																<td class="bt-0">{{ __('app.goldloan.lending') }} ( % ) </td>
																<td class="bt-0"></td>  
																<td class="bt-0">85</td>
															</tr> -->
															<tr>  
																<td class="bt-0">{{ __('app.general.tenure') }} </td>
																<td class="bt-0">:</td>  
																<td class="hidden_scheme_tenure bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.amt-sanction') }} </td>
																<td class="bt-0">:</td>  
																<td class="bt-0"><input type="text" class="form-control" name="sanction_amount" id="sanction_amount" style="width: 150px;" /></td>
															</tr>
														</table> 
													</div>
													<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
														<table class="table" id="dynamicTable12" >  
															<tr>  
																<td class="bt-0">{{ __('app.general.loan-date') }}</td>
																<td class="bt-0">:</td>  
																<td class="hidden_loan_date bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.goldloan.stwt') }}</td>
																<td class="bt-0">:</td>  
																<td class="totalStoneValue bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.goldloan.vnwt') }}</td>
																<td class="bt-0">:</td>  
																<td class="woNetAmountValue bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.eligible-amount') }}</td>
																<td class="bt-0">:</td>  
																<td class="totalNetAmount bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.appraise-code') }}</td>
																<td class="bt-0">:</td>  
																<td class="bt-0" id="appraiser_id">{{ auth()->id() }}</td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.ir') }} ( % )</td>
																<td class="bt-0">:</td>  
																<td class="hidden_scheme_ir bt-0"></td>
															</tr>
															<tr>  
																<td class="bt-0">{{ __('app.general.irt') }}</td>
																<td class="bt-0">:</td>  
																<td class="bt-0">Flat</td>
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
													<table class="table" id="dynamicTable1">  
														<tr>  
															<td class="bt-0">{{ __('app.general.pay-frequency') }}</td>
															<td class="hidden_pay_frequency bt-0">-</td>  
															<td class="bt-0">{{ __('app.general.pay-advance') }}</td>  
															<td class="hidden_pay_advance bt-0">-</td>
															<td class="bt-0">{{ __('app.general.pay-basis') }}</td>
															<td class="hidden_pay_basis bt-0">-</td>
														</tr>
														<tr>  
															<td class="bt-0">{{ __('app.general.min-loan') }}</td>
															<td class="hidden_min_loan bt-0">-</td>  
															<td class="bt-0">{{ __('app.general.max-loan') }}</td>  
															<td class="hidden_max_loan bt-0">-</td>
															<td class="bt-0">{{ __('app.general.document-chrg') }}</td>
															<td class="hidden_document_chrg bt-0">-</td>  
														</tr>
														<tr>  
															<td class="hidden_loyalty bt-0">{{ __('app.general.loyalty') }}</td>  
															<td class="bt-0">-</td>
															<td class="bt-0"></td>  
															<td class="bt-0"></td>
															<td class="bt-0"></td>
															<td class="bt-0"></td>
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
													<table class="table table-bordered interestTable" id="interestTable1">  
														<tr>
															<th>{{ __('app.general.terms') }}</th>
															<th>{{ __('app.general.ir') }} ( % ) </th>
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
									  /* '<td><input type="text" id="add_items_group_name_'+i+'" name="add_items['+i+'][group_name]" data-id='+i+' onmouseenter="searchByGroup(this)" onkeyup="searchByGroup(this)" placeholder="{{ __('app.group.item-grp') }}" class="form-control group-name" />'+
									  '<input type="hidden" id="groupId_'+i+'" name="add_items['+i+'][group_id]" value=""></td>'+ */
									  '<td><input type="text" id="add_items_item_name_'+i+'" name="add_items['+i+'][item_name]" data-id='+i+' onkeypress="searchByItem(this)" placeholder="{{ __('app.item.formtitle') }}" class="form-control" />'+
									  '<input type="hidden" id="itemId_'+i+'" name="add_items['+i+'][item_id]" value=""></td>'+
									  '<td><input type="text" id="add_items_noof_items_'+i+'" name="add_items['+i+'][noof_items]" data-id='+i+' placeholder="0" class="form-control" /></td>'+
									  '<td><select type="text" id="add_items_gold_type_'+i+'" name="add_items['+i+'][gold_type]" data-id='+i+' class="form-control" onchange="checkPurity(this)" ><option value="">Select</option><option value="1">Karat</option><option value="2">Percentage</option></select></td>'+
									  '<td id="purity_type_'+i+'"><input type="text" class="form-control" readonly /></td>'+
									  '<td><input type="text" id="add_items_gross_weight_'+i+'" name="add_items['+i+'][gross_weight]" data-id='+i+' onkeyup="calculate(this)" placeholder="0.00" class="form-control totalGrossWt" /><input type="hidden" name="add_items['+i+'][purity_karat_value]" id="purity_karat_value_'+i+'" value=""></td>'+
									  '<td><input type="text" id="add_items_stone_weight_'+i+'" name="add_items['+i+'][stone_weight]" data-id='+i+' onkeyup="calculate(this)" placeholder="0.00" class="form-control totalStoneWt" /></td>'+
									  '<td><input type="text" id="add_items_net_weight_'+i+'" name="add_items['+i+'][net_weight]" data-id='+i+' placeholder="0.00" class="form-control totalNetWt" readonly />'+
									  '<input type="hidden" id="add_items_wo_deduct_value_'+i+'" name="add_items['+i+'][wo_deduct_value]" data-id='+i+'  class="form-control toatlWoNetValue"  value="" /></td>'+
									  /* '<td><input type="text" id="add_items_current_gold_rate_'+i+'" name="add_items['+i+'][current_gold_rate]" value="" data-id='+i+' placeholder="0.00" class="form-control" readonly /></td>'+ */
									  '<td><input type="text" id="add_items_deduct_value_'+i+'" name="add_items['+i+'][deduct_value]" data-id='+i+' placeholder="0.00" class="form-control toatlDeductNetWt" value="" readonly />'+
									  '<input type="hidden" id="add_items_deduct_gold_value_'+i+'" name="add_items['+i+'][deduct_gold_value]" data-id='+i+'  class="form-control toatlDeductNetWtValue"  value="" /></td>'+
									  /* '<td><input type="text" id="add_items_lending_gold_rate_'+i+'" name="add_items['+i+'][lending_gold_rate]" data-id='+i+' placeholder="0.00" class="form-control" readonly /></td>'+ */
									  '<td><input type="text" id="add_items_net_weight_value_'+i+'" name="add_items['+i+'][net_weight_value]" data-id='+i+' placeholder="0.00" class="form-control netAmountValue" readonly /></td>'+
									  '<td><input type="text" id="add_items_remarks_'+i+'" name="add_items['+i+'][remarks]" data-id='+i+' placeholder="{{ __('app.goldloan.remarks') }}" class="form-control" /></td>'+
									  '<td><button type="button" class="btn btn-danger remove-tr" data-id='+i+' ><i class="icon-trash-2"></i></button></td></tr>');
		$('#keyValue').val(i);					  
	});

	$(document).on('click', '.clear-row', function(){  
			$("#add_items_group_name_0").val('');
			// $("#groupId_0").val('');
			$("#add_items_item_id_0").val('');
			$("#add_items_item_name_0").val('');
			$("#itemId_0").val('');
			$("#add_items_noof_items_0").val('');
			$("#add_items_purity_in_karat_0").val('');
			$("#purity_karat_value_0").val('');
			$("#add_items_gross_weight_0").val('');
			$("#add_items_stone_weight_0").val('');
			$("#add_items_net_weight_0").val('');
			// $("#add_items_current_gold_rate_0").val('');
			$("#add_items_deduct_value_0").val('');
			// $("#add_items_lending_gold_rate_0").val('');
			$("#add_items_net_weight_value_0").val('');
			$("#add_items_remarks_0").val('');
			$("#add_items_deduct_gold_value_0").val('');
			$("#add_items_wo_deduct_value_0").val('');
			// $(this).parents('tr').remove();
			totalValue();
	});  
	
	$(document).on('click', '.remove-tr', function(){  
			$(this).parents('tr').remove();
			totalValue();
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

	function glSubmit(_input) {
		var x = _input;
		var dataId = $("#"+x.id).data("id");
		
		if( dataId == "finish") {
			$("#glModalSubmit").modal('show');
		}
	}

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

	/* function searchByGroup(_input) {  
		var x = _input;
		var dataId = $("#"+x.id).data("id");
		var id = "#"+x.id;

		$(id).autocomplete({
			minLength: 0,
			source: function(request, response) {
				$.ajax({
					url: "{{url('group-autocomplete-search')}}",
					type: 'post',
					dataType: "json",
					data: {
						_token : "{{ csrf_token() }}",
						term: request.term
					},
					success: function(data) {
						response(data);
					}
				});
			},
			select: function (event, ui) {
				$("#"+x.id).val(ui.item.label); // display the selected text
				$('#groupId_'+dataId).val(ui.item.value); // save selected id to input
				$("#add_items_current_gold_rate_"+dataId).val(ui.item.currate);
				$("#add_items_item_name_"+dataId).attr('readonly',false);
				$("#add_items_lending_gold_rate_"+dataId).val($('#hidden_lend_rate').val());
				return false;
			},
			// focus: function(event, ui){
			//	 $("#"+x.id).val(ui.item.label);
			//	$('#groupId_'+dataId).val(ui.item.value);
			//	$("#add_items_current_gold_rate_"+dataId).val(ui.item.value);
			//	return false; 
			//},   
		}).focus(function() {
			$("#"+x.id).autocomplete("search", $("#"+x.id).val());
		});
	} */
	

	function calculate(_input) {  

		var x = _input;
		var dataId 				= $("#"+x.id).data("id");

		var grossWeight 		= Number($("#add_items_gross_weight_"+dataId).val());
		var stoneWeight			= Number($("#add_items_stone_weight_"+dataId).val());

		/* var current_gold_rate 	= Number($("#add_items_current_gold_rate_"+dataId).val());
		var lending_gold_rate 	= Number($("#add_items_lending_gold_rate_"+dataId).val()); */

		var current_gold_rate 	= Number($("#hidden_group_gold_rate").val());
		var lending_gold_rate 	= Number($("#hidden_lend_rate").val());

		if ( grossWeight > stoneWeight ) {

			var netWeight 				= grossWeight - stoneWeight;
			$("#add_items_net_weight_"+dataId).val(netWeight);

			var purity_karat_value 		= Number($("#purity_karat_value_"+dataId).val())/100;
			
			var netValue 				= netWeight * lending_gold_rate * purity_karat_value;
			$("#add_items_net_weight_value_"+dataId).val(netValue.toFixed(2));

			var total_item_value 	= netWeight * current_gold_rate;
			$("#add_items_wo_deduct_value_"+dataId).val(total_item_value.toFixed(2));
			
			var deduction_value 		= netWeight - ( netWeight * purity_karat_value );
			$("#add_items_deduct_value_"+dataId).val(deduction_value.toFixed(2));

			var deduct_gold_value 		= deduction_value * current_gold_rate;
			$("#add_items_deduct_gold_value_"+dataId).val(deduct_gold_value.toFixed(2));

		} else {
			alert('Gross weight should be greater than to Stone weight.');
		}

		totalValue();
	}
	
	function totalValue() {

		var gv_grosswt 		= 0;
		var gv_stonewt 		= 0;
		var gv_netwt 		= 0;
		var gv_sum 			= 0;
		var gv_wo_netwt		= 0;
		var gv_dedt_wt		= 0;
		var gv_dedt_wt_val	= 0;
       
        $('.totalGrossWt').each(function()
        {
			if ( this.value != '' ) {
            	gv_grosswt += Number(this.value);
			}
        });

		$('.totalStoneWt').each(function()
        {
			if ( this.value != '' ) {
            	gv_stonewt += Number(this.value);
			}
        });

		$('.totalNetWt').each(function()
        {
			if ( this.value != '' ) {
            	gv_netwt += Number(this.value);
			}
        });

		$('.toatlWoNetValue').each(function()
        {
			if ( this.value != '' ) {
            	gv_wo_netwt += Number(this.value);
			}
        });

		$('.toatlDeductNetWt').each(function()
        {
			if ( this.value != '' ) {
            	gv_dedt_wt += Number(this.value);
			}
        });

		$('.toatlDeductNetWtValue').each(function()
        {
			if ( this.value != '' ) {
            	gv_dedt_wt_val += Number(this.value);
			}
        });

		$('.netAmountValue').each(function()
        {
			if ( this.value != '' ) {
            	gv_sum += Number(this.value);
			}
        });

        /* $('#totalGrossValue').html(Number(gv_grosswt));
        $('#totalStoneValue').html(Number(gv_stonewt));
        $('#totalNetValue').html(Number(gv_netwt));
        $('#totalNetAmount').html(Number(gv_sum)); */

		 $('.totalGrossValue').html(gv_grosswt.toFixed(2));
		 $('.totalStoneValue').html(gv_stonewt.toFixed(2));
         $('.totalNetValue').html(gv_netwt.toFixed(2));
         $('.woNetAmountValue').html(gv_wo_netwt.toFixed(2));
         $('.totalDeductValue').html(gv_dedt_wt.toFixed(2));
         $('.totalDeductAmount').html(gv_dedt_wt_val.toFixed(2));
         $('.totalNetAmount').html(gv_sum.toFixed(2));

	}

	function searchByItem(_input) {  
		var x 			= _input;
		var dataId 		= $("#"+x.id).data("id");
		// var groupId 	= $('#groupId_'+dataId).val();
		var id 			= "#"+x.id;

		$(id).autocomplete({
			minLength: 1,
			source: function(request, response) {
				$.ajax({
					url: "{{url('item-autocomplete-search')}}",
					type: 'post',
					dataType: "json",
					data: {
						_token : "{{ csrf_token() }}",
						term : request.term,
						// groupId : groupId
					},
					success: function(data) {
						response(data);
					}
				});
			},
			select: function (event, ui) {
				$("#"+x.id).val(ui.item.label); // display the selected text
				$('#itemId_'+dataId).val(ui.item.value); // save selected id to input
				return false;
			},
		}).focus(function() {
			$("#"+x.id).autocomplete("search", $("#"+x.id).val());
		});
	}

	function checkPurity(_input)
	{
		var x 			= _input;
		var dataId 		= $("#"+x.id).data("id");

		if(x.value == 1) {
			// var groupId = $('#groupId_'+dataId).val();
			var groupId = $('#hidden_group_ref_id').val();
			$.ajax({
				url: "{{url('get-purity')}}",
				type: 'post',
				dataType: "json",
				data: {
					_token : "{{ csrf_token() }}",
					groupId : groupId,
					count : dataId
				},
				success: function(response) {
					$('#purity_type_'+dataId).html(response);
				}
			});
		} else {
			var response = '<input type="text" id="add_items_purity_in_karat_'+dataId+'" name="add_items['+i+'][purity_in_karat]" data-id='+dataId+' onkeyup="copyValue(this)" placeholder="0.00" class="form-control" />';
			$('#purity_type_'+dataId).html(response);
			// alert(" Please Enter Purity Value ")
		}
	}

	function selectPurity(_input) {
		var x 				= _input;
		var dataId 			= $("#"+x.id).data("id");
		var dataPurityValue =  $("#"+x.id).children("option:selected").data("id");
		$('#purity_karat_value_'+dataId).val(dataPurityValue);
		calculate(_input);
	}

	function copyValue(_input) {
		var x 				= _input;
		var dataId 			= $("#"+x.id).data("id");
		$('#purity_karat_value_'+dataId).val(x.value);
		calculate(_input);
	}

	function copyReqLoan(_input) {
		var x 				= _input;
		$('.req_loan_amount').html(x.value);
	}

	function selectDate(_input) {
		var x 				= _input;
		$('.hidden_loan_date').html(x.value);
	}

	function glSubmitForm() {

		var totalGrossValue 		= $('.totalGrossValue').html();
		var totalStoneValue 		= $('.totalStoneValue').html();
		var totalNetValue  			= $('.totalNetValue ').html();
		var totalDeductValue 		= $('.totalDeductValue').html();
		var woNetAmountValue  		= $('.woNetAmountValue ').html();
		var totalDeductAmount 		= $('.totalDeductAmount').html();
		var totalNetAmount			= $('.totalNetAmount').html();
		var sanction_amount			= $('#sanction_amount').val();
		var appraiser_id			= $('#appraiser_id').html();
		var hidden_group_ref_id  	= $("#hidden_group_ref_id").val();
		var hidden_lend_rate  		= $("#hidden_lend_rate").val();
		var hidden_group_gold_rate  = $("#hidden_group_gold_rate").val();
		var id  					= $("#hiddenGlId").val();
		var url         			= $("#hiddenUrl").val();

		if( id != '') {
			var _method = "POST"; // instead of PUT method.
		}
		else {
			var _method = "POST";
		}

		var glForm 				= $("#glFrom").serialize();
		var glItemsFrom 		= $("#glItemsFrom").serialize();
		var glData 				= '+&totalGrossValue='+totalGrossValue+'+&totalStoneValue='+totalStoneValue+'+&totalNetValue='+totalNetValue+'+&totalDeductValue='+totalDeductValue+'+&woNetAmountValue='+woNetAmountValue+
								  '+&totalDeductAmount='+totalDeductAmount+'+&totalNetAmount='+totalNetAmount+'+&sanction_amount='+sanction_amount+'+&appraiser_id='+appraiser_id+'+&hiddenGlId='+hiddenGlId+
								  '+&hidden_group_ref_id='+hidden_group_ref_id+'+&hidden_lend_rate='+hidden_lend_rate+'+&hidden_group_gold_rate='+hidden_group_gold_rate;

		$.ajax({
			url		: url,
			type	: _method,
			dataType: "json",
			data: {
				_token 				: "{{ csrf_token() }}",
				glForm  			: glForm + glData,
				glItemsFrom 		: glItemsFrom,
			},
			success: function(response) {
				console.log(response);
				window.location.href = "{{ route('goldloan.list') }}"
			}
		});
		
	}
	
</script>
<style>
	/* table {
		display: block;
		overflow-x: auto;
		white-space: nowrap;
	} */

	a.disabled {
		/* opacity: .4;
		cursor: default !important;
		pointer-events: none; */
	}
</style>
@endsection