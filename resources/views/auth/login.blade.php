<!doctype html>
<html lang="en">
<!-- Mirrored from themesbrand.com/admiria/layouts/horizontal-rtl/pages-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 10 Jul 2019 14:16:35 GMT -->

<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
    <title>@lang("admin.projectsSearchTool")</title>
    <meta content="Admin Dashboard" name="description">
    <meta content="Themesbrand" name="author">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <link rel="icon" type="image/x-icon" href="{{ aurl() }}/assets/images/favicon.png">

    <link href="{{ aurl() }}/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="{{ aurl() }}/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="{{ aurl() }}/assets/css/style.css" rel="stylesheet" type="text/css">
    <link href="{{ aurl() }}/assets/css/admin.css" rel="stylesheet" type="text/css">
    <style>
        ul
        {
            list-style-type: none; 
            padding: 0;
        }
        ul li
        {
            padding: 4px;
        }
    </style>
</head>

<body class="fixed-left">
    <!-- Loader -->
    <div id="preloader">
        <div id="status">
            <div class="spinner"></div>
        </div>
    </div>
    <!-- Begin page -->
    <div class="accountbg"></div>
    <div class="wrapper-page">
        <div class="card">
            <div class="card-body">
                {{-- <h3 class="text-center m-0"><a href="#" class="logo logo-admin"><img src="{{ aurl() }}/assets/images/logo.png" height="70" alt="logo"></a></h3> --}}
                <div class="p-3">
                    <h4 class="font-18 m-b-5 text-center">أهلاً بك!</h4>
                    <p class="text-muted text-center">تسجيل الدخول للوحة التحكم.</p>
                    <form class="form-horizontal m-t-30" method="post" action="{{ route('post.userAuth.do_login') }}">
                        <div class="form-group">
                            @include('msg._errors')
                            @csrf
                        </div>
                        <div class="form-group">
                            <label for="email">الايميل</label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="الايميل">
                        </div>
                        <div class="form-group">
                            <label for="userpassword">كلمة السر</label>
                            <input type="password" class="form-control" id="userpassword" name="password" placeholder="كلمة السر">
                        </div>
                        <div class="form-group row m-t-20">
                            <div class="col-sm-6">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" name="remember" id="customControlInline">
                                    <label class="custom-control-label" for="customControlInline">تذكرنى</label>
                                </div>
                            </div>
                            <div class="col-sm-6 text-right">
                                <button class="btn btn-primary w-md waves-effect waves-light" type="submit">دخول</button>
                            </div>
                        </div>
                      
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- jQuery  -->
    <script src="{{ aurl() }}/assets/js/jquery.min.js"></script>
    <script src="{{ aurl() }}/assets/js/bootstrap.bundle.min.js"></script>
    <script src="{{ aurl() }}/assets/js/modernizr.min.js"></script>
    <script src="{{ aurl() }}/assets/js/waves.js"></script>
    <script src="{{ aurl() }}/assets/js/jquery.slimscroll.js"></script>
    <script src="{{ aurl() }}/assets/js/jquery.nicescroll.js"></script>
    <script src="{{ aurl() }}/assets/js/jquery.scrollTo.min.js"></script>
    <!-- App js -->
    <script src="{{ aurl() }}/assets/js/app.js"></script>
</body>
<!-- Mirrored from themesbrand.com/admiria/layouts/horizontal-rtl/pages-login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 10 Jul 2019 14:16:35 GMT -->

</html>