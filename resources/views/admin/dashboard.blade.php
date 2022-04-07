@extends('layouts.default')
@section('title')
    {{ __('app.dashboard.title') }}
@stop
		<!-- Container fluid start -->
        @section('content')
			<!-- ** Main container start ** -->
			<div class="main-container">

				<!-- Page header start -->
				<div class="page-header">
					<ol class="breadcrumb">
						<li class="breadcrumb-item welcome-title">Welcome back, Russel</li>
					</ol>

					<ul class="app-actions">
						<li>
							<a href="#" id="reportrange">
								<span class="range-text"></span>
								<i class="icon-chevron-down"></i>	
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
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
								
								<!-- Stats block start -->
								<div class="stats-block">
									<div class="stats-details">
										<h6>Overall Sales</h6>
										<h2>6,500<span class="high">2.2%<i class="icon-triangle-up"></i></span><span>than last week</span></h2>
									</div>
									<div id="flotLineChart1" class="stats-graph"></div>
								</div>
								<!-- Stats block end -->

							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
								
								<!-- Stats block start -->
								<div class="stats-block">
									<div class="stats-details">
										<h6>Expenses</h6>
										<h2>2,700<span class="high">2.2%<i class="icon-triangle-up"></i></span><span>than last week</span></h2>
									</div>
									<div id="flotLineChart2" class="stats-graph"></div>
								</div>
								<!-- Stats block end -->

							</div>
							<div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12">
								
								<!-- Stats block start -->
								<div class="stats-block">
									<div class="stats-details">
										<h6>Todays Income</h6>
										<h2>4,200<span class="high">2.2%<i class="icon-triangle-up"></i></span><span>than last week</span></h2>
									</div>
									<div id="flotLineChart3" class="stats-graph"></div>
								</div>
								<!-- Stats block end -->

							</div>
						</div>
						<!-- Row end -->

						<!-- Row start -->
						<div class="row gutters">
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
								
								<!-- Card start -->
								<div class="card">
									<div class="card-header">
										<div class="card-title">Rvenue</div>
										<div class="card-sub-title">Overall Sales Revenue and Profits Performance Online and Offline for Q1 to Q4.</div>
									</div>
									<div class="card-body pb-0">
										<div class="revenue">
											<div class="revenue-header">
												<span class="revenue-number">2750</span>
												<i class="icon-trending_up text-success"></i>
												<small>15.25%</small>
											</div>
											<div id="apexOrders"></div>
										</div>
									</div>
								</div>
								<!-- Card end -->

							</div>
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
								
								<!-- Card start -->
								<div class="card">
									<div class="card-header">
										<div class="card-title">Traffic Source</div>
										<div class="card-sub-title">Overall Traffic Source and Referral Performance Online and Offline for Q1 to Q4.</div>
									</div>
									<div class="card-body pb-0">
										<div class="traffic">
											<div class="traffic-header">
												<span class="traffic-number">5000</span>
												<i class="icon-trending_down text-danger"></i>
												<small>10.75%</small>
											</div>
											<div id="traffic"></div>
										</div>
									</div>
								</div>
								<!-- Card end -->

							</div>
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
								
								<!-- Card start -->
								<div class="card">
									<div class="card-header">
										<div class="card-title">Product Rating</div>
									<div class="card-sub-title">250 out of 250(100%) reviewers would recommend this products rating for Q1 to Q4.</div>
									</div>
									<div class="card-body pb-0">
										<div class="overall-rating">
											<div class="rating-header">
												<span class="rating-number">5.0</span>
												<div class="rating-box">
													<img src="img/star-selected.svg" class="star" alt="Rating" />
													<img src="img/star-selected.svg" class="star" alt="Rating" />
													<img src="img/star-selected.svg" class="star" alt="Rating" />
													<img src="img/star-selected.svg" class="star" alt="Rating" />
													<img src="img/star-selected.svg" class="star" alt="Rating" />
												</div>
											</div>
											<div id="overAllRating"></div>
										</div>
									</div>
								</div>
								<!-- Card end -->

							</div>
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
								
								<!-- Card start -->
								<div class="card">
									<div class="card-header">
										<div class="card-title">Deals</div>
										<div class="card-sub-title">Overall Deals Revenue and Profits Performance Online and Offline for Q1 to Q4.</div>
									</div>
									<div class="card-body pb-0">
										<div class="deals">
											<div class="deals-header">
												<span class="deals-number">3,500</span>
												<i class="icon-trending_up text-success"></i>
												<small>25.9%</small>
											</div>
											<div id="deals"></div>
										</div>
									</div>
								</div>
								<!-- Card end -->
								
							</div>
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
								
								<!-- Card start -->
								<div class="card">
									<div class="card-header">
										<div class="card-title">Department Sales</div>
										<div class="card-sub-title">Overall Sales Revenue and Profits Performance Online and Offline for Q1 to Q4.</div>
									</div>
									<div class="card-body pb-0">
										<div class="dpt-sales">
											<div class="dpt-sales-header">
												<span class="dpt-sales-number">6,000</span>
												<i class="icon-trending_up text-success"></i>
												<small>10.5%</small>
											</div>
											<div id="apexSales"></div>
										</div>
									</div>
								</div>
								<!-- Card end -->

							</div>
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
								
								<!-- Card start -->
								<div class="card">
									<div class="card-header">
										<div class="card-title">Customers</div>
										<div class="card-sub-title">Overall Customers and Signups Performance Online and Offline Sales Q1 to Q4.</div>
									</div>
									<div class="card-body pb-0">
										<div class="customers">
											<div class="customers-header">
												<span class="customers-number">7,500</span>
												<i class="icon-trending_up text-success"></i>
												<small>12.5%</small>
											</div>
											<div id="customers"></div>
										</div>
									</div>
								</div>
								<!-- Card end -->

							</div>
						</div>
						<!-- Row end -->

						<!-- Row start -->
						<div class="row gutters">
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
								
								<!-- Card start -->
								<div class="card h-350">
									<div class="card-header">
										<div class="card-title">Delivery Status</div>
									</div>
									<div class="card-body">
										<div class="customScroll5">
											<ul class="delivery-status">
												<li class="clearfix">
													<img class="customer" src="img/user.png" alt="Customer" />
													<div class="delivery-details ">
														<span class="badge">Ordered</span>
														<h5>William Meleski</h5>
														<p>The atmosphere is excellent along with the greenery around. Market, hospital and schools are easily accessible.</p>
													</div>
												</li>
												<li class="clearfix">
													<img class="customer" src="img/user22.png" alt="Customer" />
													<div class="delivery-details">
														<span class="badge cancelled">Cancelled</span>
														<h5>Angela Serkel</h5>
														<p>We are pleased to inform that the following item no.<b>OD217887</b> have been returned that the following item no.<b>GHNM887</b> have been returned.</p>
													</div>
												</li>
												<li class="clearfix">
													<img class="customer" src="img/user5.png" alt="Customer" />
													<div class="delivery-details">
														<span class="badge delivered">Delivered</span>
														<h5>Elon Musk</h5>
														<p>We are pleased to inform that the following items in your order <b>OD556753</b> have been delivered.</p>
													</div>
												</li>
												<li class="clearfix">
													<div class="customer">JQ</div>
													<div class="delivery-details">
														<span class="badge cancelled">Cancelled</span>
														<h5>James Qvn</h5>
														<p>We are pleased to inform that the following items in your order <b>OD556753</b> have been delivered.</p>
													</div>
												</li>
												<li class="clearfix">
													<div class="customer">LK</div>
													<div class="delivery-details">
														<span class="badge">Ordered</span>
														<h5>Larry Koel</h5>
														<p>We are pleased to inform that the following item no.<b>OD217887</b> have been returned.</p>
													</div>
												</li>
												<li class="clearfix">
													<div class="customer">VG</div>
													<div class="delivery-details ">
														<span class="badge">Ordered</span>
														<h5>Venus Gks</h5>
														<p>This Location has good connectivity with nearby schools, colleges and hospitals.</p>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- Card end -->

							</div>
							<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
								
								<!-- Card start -->
								<div class="card h-350">
									<div class="card-header">
										<div class="card-title">Activity</div>
									</div>
									<div class="card-body">
										<div class="customScroll5">
											<ul class="project-activity">
												<li class="activity-list">
													<div class="detail-info">
														<p class="date">Today</p>
														<p class="info">Messages accepted with attachments</p>
													</div>
												</li>
												<li class="activity-list danger">
													<div class="detail-info">
														<p class="date">Yesterday</p>
														<p class="info">Send email notifications of subscriptions and deletions to list owner</p>
													</div>
												</li>
												<li class="activity-list success">
													<div class="detail-info">
														<p class="date">Yesterday</p>
														<p class="info">Required change logs activity reports</p>
													</div>
												</li>
												<li class="activity-list warning">
													<div class="detail-info">
													<p class="date">24th Apr</p>
														<p class="info">Strategic partnership plan</p>
													</div>
												</li>
												<li class="activity-list">
													<div class="detail-info">
														<p class="date">Yesterday</p>
														<p class="info">Send email notifications of subscriptions and deletions to list owner</p>
													</div>
												</li>
												<li class="activity-list danger">
													<div class="detail-info">
														<p class="date">Yesterday</p>
														<p class="info">Required change logs activity reports</p>
													</div>
												</li>
												<li class="activity-list success">
													<div class="detail-info">
													<p class="date">24th Apr</p>
														<p class="info">Strategic partnership plan</p>
													</div>
												</li>
												<li class="activity-list">
													<div class="detail-info">
														<p class="date">3 Mins ago</p>
														<p class="info">Required change logs activity reports</p>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<!-- Card end -->

							</div>
							<div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
								<div class="row gutters">
									<div class="col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12">
										
										<!-- Card start -->
										<div class="card">
											<div class="card-header">
												<div class="card-title">Traffic Source</div>
											</div>
											<div class="card-body">
												<div class="row gutters">
													<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
														<div class="traffic-source">
															<div id="direct"></div>
															<h4>59k</h4>
															<p>Direct</p>
														</div>
													</div>
													<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
														<div class="traffic-source">
															<div id="referrals"></div>
															<h4>45k</h4>
															<p>Referrals</p>
														</div>
													</div>
													<div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">
														<div class="traffic-source">
															<div id="search-engines"></div>
															<h4>94k</h4>
															<p>Search</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- Card end -->

									</div>
									<div class="col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12">
										
										<!-- Card start -->
										<div class="card">
											<div class="card-header">
												<div class="card-title">Invoices</div>
											</div>
											<div class="card-body">
												<div class="invoices-status">
													<div class="row gutter">
														<div class="col-lg-6 col-md-6 col-sm-6 col-6">
															<div class="progress">
																<div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
															<h5><i class="icon-triangle-up text-info"></i>65%</h5>
															<p>Paid</p>
														</div>
														<div class="col-lg-6 col-md-6 col-sm-6 col-6">
															<div class="progress">
																<div class="progress-bar bg-danger" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
															<h5><i class="icon-triangle-down text-danger"></i>35%</h5>
															<p>Pending</p>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- Card end -->

									</div>
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