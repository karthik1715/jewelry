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
				<li class="breadcrumb-item">{{ __('app.scheme.title') }}</li>
				<li class="breadcrumb-item active">{{ __('app.scheme.schemelist') }}</li>
			</ol>

			<ul class="app-actions">
				<!-- <li>
					<a href="#" id="reportrange">
						<span class="range-text"></span>
						<i class="icon-chevron-down"></i>	
					</a>
				</li> -->
				<li class="custom-search">
					<input type="text" class="search-query" placeholder="Search here ...">
					<i class="icon-search1"></i>
				</li>
				<li>
					<a href="{{route('scheme.create')}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.scheme.create-title') }}">
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
									<form action="#" method="post" class="schemechng-record-model">
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
										<h5 class="modal-title" id="customModalLabel">{{ __('app.scheme.delete-title') }}</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<form action="#" method="get" class="schemeremove-record-model">
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
												<th>{{ __('app.general.name') }}</th>
												<th>{{ __('app.general.from') }}</th>
												<th>{{ __('app.general.to') }}</th>
												<th>{{ __('app.general.status') }}</th>
												<th>{{ __('app.general.action') }}</th>
											</tr>
										</thead>
										<tbody>
											@php
												$from   = ($schemes->perPage()*($schemes->currentPage()-1))+1;
												$count = $from;
												$to     = ($schemes->currentPage() * $schemes ->perPage()) ;
												$total  = $schemes->total();
												$cal = ( $to >$total )? $total : $to ;
												$search = isset($_GET['q']) ? $_GET['q']: '';
											@endphp
										
											@forelse ($schemes as $sch)
												<tr>
													<td>{{ $count++ }}</td>
													<td>{{ $sch->name??'-' }}</td>
													<td>{{ $sch->start_date }}</td>
													<td>{{ $sch->end_date }}</td>
													@if ($sch->status == 1)
														<td class="text-success">Active</td>
													@else
														<td class="text-danger">Inactive</td>
													@endif
													<td>
														<a href="{{ route('scheme.edit',$sch->id) }}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.general.edit') }}">
															<i class="icon-pencil"></i>
														</a>
														<a class="schemechng-record" data-id="{{$sch->id}}" 
                                                                data-url="{{ url('scheme/change/'.$sch->id.'/'.$sch->status) }}" data-toggle="modal" 
                                                                data-target="#changeGroupModal" data-placement="top" title="" data-original-title="{{ __('app.general.chstatus') }}">
                                                                <i class="icon-cycle"></i>
                                                        </a>
														<a class="schemeremove-record" data-id="{{$sch->id}}" 
                                                                data-url="{{ route('scheme.delete',$sch->id) }}" data-toggle="modal" 
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

									@if ($schemes->links()->paginator->hasPages())
									
										<div class="row gutters justify-content-between">
											<div class="col-2">
												Showing {{ $from }} to {{ $cal }} of {{ $total  }}
											</div>
											<div class="col-2">
												{!! $schemes->appends(['q' => $search])->links() !!}
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
$('.schemeremove-record').click(function() {
    var id = $(this).attr('data-id');
    var url = $(this).attr('data-url');
    $(".schemeremove-record-model").attr("action",url);
});

$('.schemechng-record').click(function() {
    var id = $(this).attr('data-id');
    var url = $(this).attr('data-url');
    $(".schemechng-record-model").attr("action",url);
});

</script>
@endsection