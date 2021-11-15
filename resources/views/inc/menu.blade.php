

    <!-- Navigation Bar-->
    <header id="topnav">
        <div class="topbar-main">
            <div class="container-fluid">
                <!-- Logo container-->
                <div class="logo">
                    <!-- Text Logo -->
                    <!--<a href="index.html" class="logo">-->
                        <!-- Search -->
                        <!-- Fullscreen -->
                        <li class="list-inline-item dropdown notification-list">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="{{ aurl() }}/assets/images/avatar.png" alt="">
                            </a>

                        </li>

                        <li class="menu-item list-inline-item">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle nav-link">
                                <div class="lines"><span></span> <span></span> <span></span></div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>
                    </ul>
                </div>
                <!-- end menu-extras -->
                <div class="clearfix"></div>
            </div>
            <!-- end container -->
        </div>
        <!-- end topbar-main -->
        <!-- MENU Start -->
        <div class="navbar-custom">
            <div class="container-fluid">
                <div id="navigation" class="{{diren()}}">
                    <!-- Navigation Menu-->
                    <ul class="navigation-menu {{diren()}}">

                        <li>
                            <a href="{{route('get.home.index')}}" class="{{SA('home')}}"><i class="mdi mdi-home"></i>
                                @lang('admin.home')
                            </a>
                        </li>

                        <li class="has-submenu">
                            <a href="#" class="{{SA('input')}}"><i class="mdi mdi-send"></i>
                                @lang('admin.offerOrders')
                            </a>
                            <ul class="submenu">
                                    <li><a href="{{route('get.offerOrder.index')}}">@lang('admin.list')</a></li>
                                <li><a href="{{route('get.OfferOrder.create')}}">@lang('admin.addNew')</a></li>
                            </ul>
                        </li>
                            <li class="has-submenu">
                                <a href="#" class="{{SA('input')}}"><i class="mdi mdi-sitemap"></i>
                                    @lang('admin.input')
                                </a>
                                <ul class="submenu">
                                    <li><a href="{{route('get.project.index')}}">@lang('admin.projects')</a></li>
                                    <li><a href="{{route('get.city.index')}}">@lang('admin.cities')</a></li>
                                    <li><a href="{{route('get.region.index')}}">@lang('admin.regions')</a></li>
                                    <li><a href="{{route('get.numberOfRooms.index')}}">@lang('admin.numberOfRooms')</a></li>         
                                </ul>
                            </li>
                            <li>
                                <a href="{{route('get.user.index')}}" class="{{SA('admin')}}"><i class="mdi mdi-account"></i>
                                    @lang('admin.users')
                                </a>
                            </li>
                        <li>
                            <a href="{{route('get.pricesInRegion')}}" class="{{SA('regin_prices')}}"><i class="mdi mdi-sitemap"></i>
                                @lang('admin.max_min_price_in_region')
                            </a>
                        </li>


                         <li>
                            <a href="{{route('get.PropOnMap.index')}}" class="{{SA('search-using-map')}}"><i class="mdi mdi-sitemap"></i>
                                @lang('admin.PropOnMap')
                            </a>
                        </li>


                    </ul>
                    <!-- End navigation menu -->
                </div>
                <!-- end #navigation -->
            </div>
            <!-- end container -->
        </div>
        <!-- end navbar-custom -->
    </header>
    <!-- End Navigation Bar-->





    <div class="wrapper">
        <div class="container-fluid">


        @include('inc.breadcrumb')