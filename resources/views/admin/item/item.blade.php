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
				<li class="breadcrumb-item">{{ __('app.item.title') }}</li>
				<li class="breadcrumb-item active">{{ __('app.item.itemlist') }}</li>
			</ol>

			<ul class="app-actions">
				<li class="custom-search">
					<input type="text" class="search-query" placeholder="Search here ...">
					<i class="icon-search1"></i>
				</li>
				<li>
					<a href="{{route('item.create')}}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.item.create-title') }}">
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
									<form action="#" method="post" class="itemchng-record-model">
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
										<h5 class="modal-title" id="customModalLabel">{{ __('app.item.delete-title') }}</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<form action="#" method="get" class="itemremove-record-model">
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
												<th>{{ __('app.general.id') }}</th>
												<th>{{ __('app.group.formtitle') }}</th>
												<th>{{ __('app.item.title') }}</th>
												<th>{{ __('app.general.code') }}</th>
												<th>{{ __('app.general.description') }}</th>
												<th>{{ __('app.general.status') }}</th>
												<th>{{ __('app.general.action') }}</th>
											</tr>
										</thead>
										<tbody>
											@php
												$from   = ($items->perPage()*($items->currentPage()-1))+1;
												$count 	= $from;
												$to     = ($items->currentPage() * $items ->perPage()) ;
												$total  = $items->total();
												$cal = ( $to >$total )? $total : $to ;
												$search = isset($_GET['q']) ? $_GET['q']: '';
											@endphp
											@forelse ($items as $key => $item)
												<tr>
													<td>{{ $count++ }}</td>
													<td>{{ $item->group->name??'-' }}</td>
													<td>{{ $item->name??'-' }}</td>
													<td>{{ $item->item_code??'-' }}</td>
													<td>{{ $item->description }}</td>
													@if ($item->status == 1)
														<td class="text-success">Active</td>
													@else
														<td class="text-danger">Inactive</td>
													@endif
													<td>
														<a href="{{ route('item.edit',$item->id) }}" data-toggle="tooltip" data-placement="top" title="" data-original-title="{{ __('app.general.edit') }}">
															<i class="icon-pencil"></i>
														</a>
														<a class="itemchng-record" data-id="{{$item->id}}" 
                                                                data-url="{{ url('item/change/'.$item->id.'/'.$item->status) }}" data-toggle="modal" 
                                                                data-target="#changeGroupModal" data-placement="top" title="" data-original-title="{{ __('app.general.chstatus') }}">
                                                                <i class="icon-cycle"></i>
                                                        </a>
														<a class="itemremove-record" data-id="{{$item->id}}" 
                                                                data-url="{{ route('item.delete',$item->id) }}" data-toggle="modal" 
                                                                data-target="#deleteGroupModal" data-placement="top" title="" data-original-title="{{ __('app.general.delete') }}">
                                                                <i class="icon-trash"></i>
                                                        </a>
													</td>
												</tr>
											@empty
												</tr><td colspan='4' class="text-center">{{ __('app.general.norecord') }}</td></tr>
											@endforelse
										</tbody>
									</table>

									@if ($items->links()->paginator->hasPages())

										<div class="row gutters justify-content-between">
											<div class="col-2">
												Showing {{ $from }} to {{ $cal }} of {{ $total  }}
											</div>
											<div class="col-2">
												{!! $items->appends(['q' => $search])->links() !!}
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
$('.itemremove-record').click(function() {
    var id = $(this).attr('data-id');
    var url = $(this).attr('data-url');
    $(".itemremove-record-model").attr("action",url);
});

$('.itemchng-record').click(function() {
    var id = $(this).attr('data-id');
    var url = $(this).attr('data-url');
    $(".itemchng-record-model").attr("action",url);
});

</script>
@endsection