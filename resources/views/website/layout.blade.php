<!DOCTYPE html>
<html>
<!-- meta contains meta taga, css and fontawesome icons etc -->
@include('website.common.meta')
<!-- ./end of meta -->

<body>

    <!-- header contains top navbar -->
@include('website.common.header')
<!-- ./end of header -->

    <!-- dynamic content -->
@yield('content')
<!-- ./end of dynamic content -->

<!-- ./footer -->
@include('website.common.footer')
    <!-- ./footer -->
<!-- all js scripts including custom js -->
@include('website.common.scripts')
<!-- ./end of js scripts -->

</body>
</html>
