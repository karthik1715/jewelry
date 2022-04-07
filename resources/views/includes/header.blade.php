<!-- Loading starts -->
<div id="loading-wrapper">
   <div class="spinner-border" role="status">
      <span class="sr-only">Loading...</span>
   </div>
</div>
<!-- Loading ends -->

<!-- ** Header section start ** -->

<!-- Header start -->
<header class="header">
   <div class="logo-wrapper">
      <a href="{{url('dashboard')}}" class="logo">
         <img src="{{ URL::asset('public/assets/img/logo.png') }}" alt="Coderz Admin Dashboard" />
      </a>
   </div>
   <div class="header-items">
      <!-- Custom search start -->
      <!-- <div class="custom-search">
         <input type="text" class="search-query" placeholder="Search here ...">
         <i class="icon-search1"></i>
      </div> -->
      <!-- Custom search end -->

      <!-- Header actions start -->
      <ul class="header-actions">
         <li class="dropdown">
            <!-- <a href="#" id="notifications" data-toggle="dropdown" aria-haspopup="true">
               <i class="icon-box"></i>
            </a> -->
            <div class="dropdown-menu dropdown-menu-right lrg" aria-labelledby="notifications">
               <div class="dropdown-menu-header">
                  Tasks (05)
               </div>	
               <ul class="header-tasks">
                  <li>
                     <p>#Task<span>90%</span></p>
                     <div class="progress">
                        <div class="progress-bar bg-primary" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                           <span class="sr-only">90% Complete (success)</span>
                        </div>
                     </div>
                  </li>
                  <!-- <li>
                     <p>#95 - Alignment Fix<span>60%</span></p>
                     <div class="progress">
                        <div class="progress-bar bg-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                           <span class="sr-only">60% Complete (success)</span>
                        </div>
                     </div>
                  </li>
                  <li>
                     <p>#7 - Broken Button<span>40%</span></p>
                     <div class="progress">
                        <div class="progress-bar bg-secondary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                           <span class="sr-only">40% Complete (success)</span>
                        </div>
                     </div>
                  </li> -->
               </ul>
            </div>
         </li>
         <li class="dropdown">
            <a href="#" id="notifications" data-toggle="dropdown" aria-haspopup="true">
               <i class="icon-bell"></i>
               <span class="count-label">1</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right lrg" aria-labelledby="notifications">
               <div class="dropdown-menu-header">
                  Notifications (1)
               </div>
               <ul class="header-notifications">
                  <li>
                     <a href="#">
                        <div class="user-img away">
                           <img src="{{ URL::asset('public/assets/img/user.png') }}" alt="User" />
                        </div>
                        <div class="details">
                           <div class="user-title">Customer</div>
                           <div class="noti-details">Customer has been added.</div>
                           <div class="noti-date">Apr 02, 11:00 am</div>
                        </div>
                     </a>
                  </li>
                  <!-- <li>
                     <a href="#">
                        <div class="user-img busy">
                           <img src="img/user10.png" alt="User" />
                        </div>
                        <div class="details">
                           <div class="user-title">Braxten</div>
                           <div class="noti-details">Approved new design.</div>
                           <div class="noti-date">Oct 10, 12:00 am</div>
                        </div>
                     </a>
                  </li>
                  <li>
                     <a href="#">
                        <div class="user-img online">
                           <img src="img/user6.png" alt="User" />
                        </div>
                        <div class="details">
                           <div class="user-title">Larkyn</div>
                           <div class="noti-details">Check out every table in detail.</div>
                           <div class="noti-date">Oct 15, 04:00 pm</div>
                        </div>
                     </a>
                  </li> -->
               </ul>
            </div>
         </li>
         <li class="dropdown">
            <a href="#" id="userSettings" class="user-settings" data-toggle="dropdown" aria-haspopup="true">
               <span class="user-name">Coderz Admin</span>
               <span class="avatar">CA<span class="status busy"></span></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userSettings">
               <div class="header-profile-actions">
                  <div class="header-user-profile">
                     <div class="header-user">
                        <img src="{{ URL::asset('public/assets/img/user.png') }}" alt="Admin Template" />
                     </div>
                     <h5>Coderz Admin</h5>
                     <p>Admin</p>
                  </div>
                  <a href="#"><i class="icon-user1"></i> {{ __('app.general.myprofile') }}</a>
                  <a href="#"><i class="icon-settings1"></i> {{ __('app.general.accountsettings') }}</a>
                  <a href="{{url('/logout')}}"><i class="icon-log-out1"></i> {{ __('app.general.signout') }}</a>
               </div>
            </div>
         </li>
         <!-- <li>
            <a href="#" class="quick-settings-btn" data-toggle="tooltip" data-placement="left" title="" data-original-title="Quick Settings">
               <i class="icon-list"></i>
            </a>
         </li> -->
      </ul>						
      <!-- Header actions end -->
   </div>
</header>
<!-- Header end -->

<!-- Screen overlay start -->
<div class="screen-overlay"></div>
<!-- Screen overlay end -->

<!-- Quick settings start -->
<div class="quick-settings-box">
   <div class="quick-settings-header">
      <div class="date-container">Today <span class="date" id="today-date"></span></div>
      <a href="#" class="quick-settings-box-close">
         <i class="icon-circle-with-cross"></i>
      </a>
   </div>
   <div class="quick-settings-body">
      <div class="fullHeight">
         <div class="quick-setting-list">
            <h6 class="title">Events</h6>
            <ul class="list-items">
               <li>
                  <div class="list-title">Product Launch</div>
                  <div class="list-location">10:00 AM</div>
               </li>
               <li>
                  <div class="list-title">Team Meeting</div>
                  <div class="list-location">01:30 PM</div>
               </li>
               <li>
                  <div class="list-title">Q&A Session</div>
                  <div class="list-location">02:30 PM</div>
               </li>
            </ul>
         </div>
         <div class="quick-setting-list">
            <h6 class="title">Notes</h6>
            <ul class="list-items">
               <li>
                  <div class="list-title">Refreshing the list</div>
                  <div class="list-location">03:15 PM</div>
               </li>
               <li>
                  <div class="list-title">Not able to click on button</div>
                  <div class="list-location">03:18 PM</div>
               </li>
            </ul>
         </div>
         <div class="quick-setting-list">
            <h6 class="title">Quick Settings</h6>
            <ul class="set-priority-list">
               <li>
                  <div class="custom-control custom-switch">
                     <input type="checkbox" class="custom-control-input" checked id="systemUpdates">
                     <label class="custom-control-label" for="systemUpdates">System Updates</label>
                  </div>
               </li>
               <li>
                  <div class="custom-control custom-switch">
                     <input type="checkbox" class="custom-control-input" id="noti">
                     <label class="custom-control-label" for="noti">Notifications</label>
                  </div>
               </li>
            </ul>
         </div>
      </div>
   </div>
</div>
<!-- Quick settings end -->

<!-- ** Header section end ** -->