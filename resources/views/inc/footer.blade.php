        </div>
        <!-- end container -->
    </div>
    <!-- end wrapper -->
    <!-- Footer -->
    <footer class="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12"> {{ date("Y") }} © Deidin <span class="text-muted d-none d-sm-inline-block @if(getDir() == 'l') float-left @else float-right @endif">Crafted with <i class="mdi mdi-heart text-danger"></i> by Deidin</span></div>
            </div>
        </div>
    </footer>
    <!-- End Footer -->
    <!-- jQuery  -->
    <script src="{{ aurl() }}/assets/js/jquery.min.js"></script>
    <script src="{{ aurl() }}/assets/js/bootstrap.bundle.min.js"></script>
    <script src="{{ aurl() }}/assets/js/modernizr.min.js"></script>
    <script src="{{ aurl() }}/assets/js/waves.js"></script>
    <script src="{{ aurl() }}/assets/js/jquery.slimscroll.js"></script>
    <script src="{{ aurl() }}/assets/js/jquery.nicescroll.js"></script>
    <script src="{{ aurl() }}/assets/js/jquery.scrollTo.min.js"></script>
    <!-- App js -->




    <!-- Start Google map AIP -->

    <!-- End Google map AIP -->

    {{-- Sweet alert 2 --}}
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
    
    @yield('script')
    
    <script src="{{ aurl() }}/assets/js/app.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-16GK7Z4N1D"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-16GK7Z4N1D');
</script>


</body>
<!-- Mirrored from themesbrand.com/admiria/layouts/horizontal-rtl/pages-blank.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 10 Jul 2019 14:16:39 GMT -->

</html>