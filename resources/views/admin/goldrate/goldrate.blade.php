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
				<li class="breadcrumb-item">{{ __('app.goldrate.title') }}</li>
				<li class="breadcrumb-item active">{{ __('app.goldrate.goldratelist') }}</li>
			</ol>

			<ul class="app-actions">
				<li class="custom-search">
					<input type="text" class="search-query" placeholder="Search here ...">
					<i class="icon-search1"></i>
				</li>
				<li>
					<a href="{{route('goldrate.create')}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.goldrate.create-title') }}">
						<i class="icon-plus"></i>
					</a>
				</li>
				<li>
					<a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Print">
						<i class="icon-print"></i>
					</a>
				</li>
				<li>
					<a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Download CSV">
						<i class="icon-cloud_download"></i>
					</a>
				</li>
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

						<!-- changeModal -->
						<div class="modal fade" id="changeGroupModal" tabindex="-1" role="dialog" aria-labelledby="customModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="changeModalLabel">{{ __('app.general.chstatus') }}</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<form action="#" method="post" class="goldratechng-record-model">
                                        @csrf
										<div class="modal-body">
											<div class="text-center">
												<p class="mb-3">{{ __('app.general.changeMessage') }}</p>
											</div>
										</div>
										<div class="modal-footer custom">
											<div class="left-side">
												<button type="button" class="btn btn-link danger" data-dismiss="modal">{{ __('app.general.cancel') }}</button>
											</div>
											<div class="divider"></div>
											<div class="right-side">
												<button type="submit" class="btn btn-link success">{{ __('app.general.submit') }}</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!-- deleteModal -->
						<div class="modal fade" id="deleteGroupModal" tabindex="-1" role="dialog" aria-labelledby="customModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="customModalLabel">{{ __('app.goldrate.delete-title') }}</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<form action="#" method="get" class="goldrateremove-record-model">
                                        @csrf
										<div class="modal-body">
											<div class="text-center">
												<p class="mb-3">{{ __('app.general.deleteMessage') }}</p>
											</div>
										</div>
										<div class="modal-footer custom">
											<div class="left-side">
												<button type="button" class="btn btn-link danger" data-dismiss="modal">{{ __('app.general.cancel') }}</button>
											</div>
											<div class="divider"></div>
											<div class="right-side">
												<button type="submit" class="btn btn-link success">{{ __('app.general.submit') }}</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!-- Card start -->
						<div class="card">
							<div class="card-body">
								<div class="table-responsive">
									@include('includes.flash-message')
									<table class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>{{ __('app.general.sno') }}</th>
												<th>{{ __('app.group.formtitle') }}</th>
												<th>{{ __('app.general.goldrate') }}</th>
												<th>{{ __('app.general.date') }}</th>
												<th>{{ __('app.general.notes') }}</th>
												<th>{{ __('app.general.status') }}</th>
												<th>{{ __('app.general.action') }}</th>
											</tr>
										</thead>
										<tbody>
											@php
												$from   = ($goldrates->perPage()*($goldrates->currentPage()-1))+1;
												$count 	= $from;
												$to     = ($goldrates->currentPage() * $goldrates ->perPage()) ;
												$total  = $goldrates->total();
												$cal = ( $to >$total )? $total : $to ;
												$search = isset($_GET['q']) ? $_GET['q']: '';
											@endphp

											@forelse ($goldrates as $grs)
												<tr>
													<td>{{ $count++ }}</td>
													<td>{{ $grs->group->name??'-' }}</td>
													<td>{{ $grs->current_rate??'-' }}</td>
													<td>{{ $grs->current_date }}</td>
													<td>{{ $grs->notes }}</td>
													@if ($grs->status == 1)
														<td class="text-success">Active</td>
													@else
														<td class="text-danger">Inactive</td>
													@endif
													<td>
														<a href="{{ route('goldrate.edit',$grs->id) }}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.general.edit') }}">
															<i class="icon-pencil"></i>
														</a>
														<a class="goldratechng-record" data-id="{{$grs->id}}" 
                                                                data-url="{{ url('goldrate/change/'.$grs->id.'/'.$grs->status) }}" data-toggle="modal" 
                                                                data-target="#changeGroupModal" data-placement="top" title="" data-original-title="{{ __('app.general.chstatus') }}">
                                                                <i class="icon-cycle"></i>
                                                        </a>
														<a class="goldrateremove-record" data-id="{{$grs->id}}" 
                                                                data-url="{{ route('goldrate.delete',$grs->id) }}" data-toggle="modal" 
                                                                data-target="#deleteGroupModal" data-placement="top" title="" data-original-title="{{ __('app.general.delete') }}">
                                                                <i class="icon-trash-2"></i>
                                                        </a>
													</td>
												</tr>
											@empty
												</tr><td colspan='4' class="text-center">{{ __('app.general.norecord') }}</td></tr>
											@endforelse
										</tbody>
									</table>

									@if ($goldrates->links()->paginator->hasPages())

										<div class="row gutters justify-content-between">
											<div class="col-2">
												Showing {{ $from }} to {{ $cal }} of {{ $total  }}
											</div>
											<div class="col-2">
												{!! $goldrates->appends(['q' => $search])->links() !!}
											</div>
											<div class="col-2"></div>
										</div>

									@endif
							</div>
								</div>
							</div>
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
@section('script')
<script> 
$('.goldrateremove-record').click(function() {
    var id = $(this).attr('data-id');
    var url = $(this).attr('data-url');
    $(".goldrateremove-record-model").attr("action",url);
});

$('.goldratechng-record').click(function() {
    var id = $(this).attr('data-id');
    var url = $(this).attr('data-url');
    $(".goldratechng-record-model").attr("action",url);
});

</script>
@endsection