<!-- Navigation start -->
<nav class="navbar navbar-expand-lg custom-navbar">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#coderzNavbar" aria-controls="coderzNavbar" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon">
            <i></i>
            <i></i>
            <i></i>
        </span>
    </button>
    <div class="collapse navbar-collapse" id="coderzNavbar">
        <ul class="navbar-nav">
            <!-- <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle active-page" href="#" id="dashboardsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-devices_other nav-icon"></i>
                    Dashboards
                </a>
                <ul class="dropdown-menu" aria-labelledby="dashboardsDropdown">
                    <li>
                        <a class="dropdown-item active-page" href="index-2.html">Dashboard</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-analytics.html">Analytics</a>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="TravelDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Real Estate
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="TravelDropdown">
                            <li>
                                <a class="dropdown-item" href="dashboard-realestate.html">Real Estate Dashboard</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-realestate-property-list.html">Property List</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-realestate-property-details.html">Property Details</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-realestate-property-gallery.html">Property Gallery</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-realestate-property-search.html">Property Search</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-crm.html">CRM</a>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="UniversityDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            University
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="UniversityDropdown">
                            <li>
                                <a class="dropdown-item" href="dashboard-university.html">University Dashboard</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-university-courses.html">University Courses</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-university-staff.html">University Staff</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-university-staff-profile.html">Staff Profile</a>
                            </li>										
                            <li>
                                <a class="dropdown-item" href="dashboard-university-schedule.html">Schedule</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-university-blog.html">University Blog</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-university-gallery.html">Students Gallery</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-daily-sales.html">Daily Sales</a>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="TravelDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Travel
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="TravelDropdown">
                            <li>
                                <a class="dropdown-item" href="dashboard-travel.html">Travel Dashboard</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-travel-hotel-detail.html">Hotel Details</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-travel-hotel-ratings.html">Hotel Ratings</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-travel-hotels-listing.html">Hotel Listing</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-travel-bookings.html">Hotel Bookings</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-travel-hotel-recommended.html">Hotel Recommended</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-travel-hotel-reviews.html">Hotel Reviews</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dashboard-travel-maps.html">Hotel Maps</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-ecommerce.html">Ecommerce</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-helpdesk.html">Helpdesk</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-project-management.html">Project Management</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-quick.html">Quick Admin</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-retail-store.html">Retail Admin</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-smart.html">Smart Admin</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="dashboard-trading.html">Trading Admin</a>
                    </li>
                </ul>
            </li> -->
            <li class="nav-item dropdown">
                <a class="nav-link active-page" href="{{url('dashboard')}}" role="button" >
                    <i class="icon-devices_other nav-icon"></i>
                    {{ __('app.dashboard.title') }}
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="appsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-package nav-icon"></i>
                    {{ __('app.general.glm') }}
                </a>
                <ul class="dropdown-menu" aria-labelledby="appsDropdown">
                    <li>
                        <a class="dropdown-item" href="{{url('group')}}">{{ __('app.general.addgroup') }}</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('goldrate')}}">{{ __('app.general.addglr') }} </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('item')}}">{{ __('app.general.additem') }}</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('scheme')}}">{{ __('app.general.addgls') }}</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">{{ __('app.general.addcustomer') }}</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">{{ __('app.general.addemployee') }}</a>
                    </li>
                    <!-- <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="calendarsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Calendars
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="calendarsDropdown">
                            <li>
                                <a class="dropdown-item" href="calendar.html">Daygrid View</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="calendar-external-draggable.html">External Draggable</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="calendar-google.html">Google Calendar</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="calendar-list-view.html">List View</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="calendar-selectable.html">Selectable</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="calendar-week-numbers.html">Week Numbers</a>
                            </li>
                        </ul>
                    </li> -->
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="appsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-layers2 nav-icon"></i>
                    Gold Loan
                </a>
                <ul class="dropdown-menu" aria-labelledby="appsDropdown">
                    <li>
                        <a class="dropdown-item" href="{{url('goldloan')}}">New Gold Loan </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Pending Gold Loans</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Approval Waiting Gold Loans</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Approved Gold Loans</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Disbursed Gold Loans</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Closed Gold Loans</a>
                    </li>
                   
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="appsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-book-open nav-icon"></i>
                    {{ __('app.general.reports') }}
                </a>
                <ul class="dropdown-menu" aria-labelledby="appsDropdown">
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">GL Ledger Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Item group Based Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}"> Scheme Based Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Customer Based Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Item Based Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Interest Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Approval Pending Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Approved Gold Loans Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Rejected Gold loans Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Disbursed Gold loans Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Closed Gold loans Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Collection Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Loan Payment Report</a>
                    </li>
                    <!-- <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Receipt Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Appraisal based Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Loan Outstanding and Balances Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Branch-based Report</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="{{url('dashboard')}}">Total EMI Due Report</a>
                    </li> -->
                </ul>
            </li>
            
            <!-- <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-book-open nav-icon"></i>
                    Pages
                </a>
                <ul class="dropdown-menu" aria-labelledby="pagesDropdown">
                    <li>
                        <a class="dropdown-item" href="user-profile.html">User Profile</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="cards.html">Cards</a>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="layoutsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Layouts
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="layoutsDropdown">
                            <li>
                                <a class="dropdown-item" href="default-layout.html">Fixed Layout</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="boxed-layout.html">Boxed Layout</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="card-options.html">Card Options</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="drag-drop-cards.html">Drag and Drop Cards</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-item" href="pricing.html">Pricing Plans</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="faq.html">Faq</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="search-results.html">Search Results</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="blog.html">Blog</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="account-settings.html">Account Settings</a>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="customGallery" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Gallery
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="customGallery">
                            <li>
                                <a class="dropdown-item" href="gallery.html">Gallery Slider</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="gallery2.html">Gallery Thumbnail</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="gallery3.html">Gallery Hover</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-item" href="icons.html">Icons</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="typography.html">Typography</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="formsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-edit1 nav-icon"></i>
                    Forms
                </a>
                <ul class="dropdown-menu" aria-labelledby="formsDropdown">
                    <li>
                        <a class="dropdown-item" href="wizard.html">Wizards</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="bs-select.html">BS Select</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="input-tags.html">Input Tags</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="input-masks.html">Input Mask</a>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="customDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Custom Forms
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="customDropdown">
                            <li>
                                <a class="dropdown-item" href="contact.html">Contact Form</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="contact2.html">Contact Form #2</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="contact3.html">Contact Form #3</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="contact4.html">Contact Form #4</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-item" href="form-inputs.html">Form Inputs</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="input-groups.html">Input Groups</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="check-radio.html">Check Boxes</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="range-sliders.html">Range Sliders</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="editor.html">Editor</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="uiElementsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-image nav-icon"></i>
                    UI Elements
                </a>
                <ul class="dropdown-menu" aria-labelledby="uiElementsDropdown">
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="buttonsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Buttons
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="buttonsDropdown">
                            <li>
                                <a class="dropdown-item" href="buttons.html">Buttons</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="button-groups.html">Button Groups</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="dropdowns.html">Dropdowns</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="navsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Navbars
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="navsDropdown">
                            <li>
                                <a class="dropdown-item" href="nav.html">Nav</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="tabs.html">Tabs</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="componentsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Components
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="componentsDropdown">
                            <li>
                                <a class="dropdown-item" href="jumbotron.html">Jumbotron</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="labels-badges.html">Labels &amp; Badges</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="list-items.html">List Items</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="pagination.html">Paginations</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="progress.html">Progress Bars</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="pills.html">Pills</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="spinners.html">Spinners</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="gridDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Grid
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="gridDropdown">
                            <li>
                                <a class="dropdown-item" href="grid.html">Grid</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="grid-doc.html">Grid Doc</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="imagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Images
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="imagesDropdown">
                            <li>
                                <a class="dropdown-item" href="avatars.html">Avatars</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="media-objects.html">Media Objects</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="images.html">Thumbnails</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="text-avatars.html">Text Avatars</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="accordionsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Accordions
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="accordionsDropdown">
                            <li>
                                <a class="dropdown-item" href="accordion.html">Accordion</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="accordion-icons.html">Accordion Icons</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="accordion-arrows.html">Accordion Arrows</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="accordion-lg.html">Accordion Large</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="alertDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Notifications
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="alertDropdown">
                            <li>
                                <a class="dropdown-item" href="bootstrap-alerts.html">Default Alerts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="custom-alerts.html">Custom Alerts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="toasts.html">Toasts</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-item" href="carousel.html">Carousels</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="modals.html">Modals</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="popovers-tooltips.html">Tooltips</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="tablesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-border_all nav-icon"></i>
                    Tables
                </a>
                <ul class="dropdown-menu" aria-labelledby="tablesDropdown">
                    <li>
                        <a class="dropdown-item" href="custom-tables.html">Custom Tables</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="default-table.html">Default Table</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="table-bordered.html">Table Bordered</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="table-hover.html">Table Hover</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="table-striped.html">Table Striped</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="table-small.html">Table Small</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="table-colors.html">Table Colors</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="data-tables.html">Data Tables</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="layoutsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-layers2 nav-icon"></i>
                    Sub menu
                </a>
                <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="layoutsDropdown">
                    <li>
                        <a class="dropdown-toggle sub-nav-link" href="#" id="submenuDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Opens Right
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="submenuDropdown">
                            <li>
                                <a class="dropdown-item" href="javascript:void(0)">Submenu 1</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="javascript:void(0)">Submenu 2</a>
                            </li>
                        </ul>
                    </li>
                    <li class="open-left">
                        <a class="dropdown-toggle sub-nav-link" href="#" id="submenuLeftDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Opens Left
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="submenuLeftDropdown">
                            <li>
                                <a class="dropdown-item" href="javascript:void(0)">Submenu 1</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="javascript:void(0)">Submenu 2</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="graphsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-pie-chart1 nav-icon"></i>
                    Graphs
                </a>
                <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="graphsDropdown">
                    <li class="open-left">
                        <a class="dropdown-toggle sub-nav-link" href="#" id="apexDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Apex Graphs
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="apexDropdown">
                            <li>
                                <a class="dropdown-item" href="area-graphs.html">Area Charts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="bubble.html">Bubble Graphs</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="bar-graphs.html">Bar Charts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="candlestick.html">Candlestick</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="column-graphs.html">Column Charts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="donut-graphs.html">Donut Charts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="line-graphs.html">Line Charts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="mixed-graphs.html">Mixed Charts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="pie-graphs.html">Pie Charts</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="radial-chart.html">Radial Graph</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="dropdown-item" href="morris-graphs.html">Morris Graphs</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="flot-graphs.html">Flot Graphs</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="c3-graphs.html">C3 Graphs</a>
                    </li>
                    <li class="open-left">
                        <a class="dropdown-toggle sub-nav-link" href="#" id="mapsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Vector Maps
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="mapsDropdown">
                            <li>
                                <a class="dropdown-item" href="vector-maps.html">Vector Maps</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="google-maps.html">Google Maps</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="loginDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-alert-triangle nav-icon"></i>
                    Login
                </a>
                <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="loginDropdown">
                    <li>
                        <a class="dropdown-item" href="login.html">Login</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="signup.html">Signup</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="forgot-pwd.html">Forgot Password</a>
                    </li>
                    <li class="open-left">
                        <a class="dropdown-toggle sub-nav-link" href="#" id="subscribeDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Subscribe
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="subscribeDropdown">
                            <li>
                                <a class="dropdown-item" href="subscribe.html">Subscribe</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="subscribe2.html">Subscribe 2</a>
                            </li>
                        </ul>
                    </li>
                    <li class="open-left">
                        <a class="dropdown-toggle sub-nav-link" href="#" id="errorDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Error Pages
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="errorDropdown">
                            <li>
                                <a class="dropdown-item" href="error.html">404</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="error2.html">505</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li> -->
        </ul>
    </div>
</nav>
<!-- Navigation end -->