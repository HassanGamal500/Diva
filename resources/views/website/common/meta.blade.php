<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta property="og:type" content="website">
  <meta property="og:site_name" content="{{trans('website.app name')}} ">
  <meta property="og:title" content="{{trans('website.app name')}} ">
  <meta property="og:url" content="http://diva.com">
  <meta property="og:image" content="{!! asset('website/img/fav.png') !!}">
  <meta property="og:description" content="{{aboutUs()[0]->about_description_part}}">
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  <title>{{trans('website.app name')}} | {{$data['title']}}</title>
  <!-- FavIcon -->
  <link rel="shortcut icon" href="{!! asset('website/img/fav.png') !!}">
  <!--google fonts-->
  <link href="https://fonts.googleapis.com/css?family=Vollkorn&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Amiri&display=swap" rel="stylesheet">
<!-- Bootstrap 4 -->
  @if (session()->get('front-locale') == 'ar')
  <!-- rtl -->
  <link rel="stylesheet" href="https://cdn.rtlcss.com/bootstrap/v4.0.0/css/bootstrap.min.css" integrity="sha384-P4uhUIGk/q1gaD/NdgkBIl3a6QywJjlsFJFk7SPRdruoGddvRVSwv5qFnvZ73cpz"
          crossorigin="anonymous">
  @else
  <!-- ltr -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  @endif
  <!-- font awesome -->
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css'
        integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
  <!-- plugins -->
  <link rel="stylesheet" href="{!! asset('website/css/slick.css') !!}" />
  <link rel="stylesheet" href="{!! asset('website/css/slick-theme.css') !!}" />
  <!-- my style -->
  <link rel="stylesheet" href="{!! asset('website/css/media.css') !!}" />
  <link rel="stylesheet" href="{!! asset('website/css/main.css') !!}" />
  @if (session()->get('front-locale') == 'ar')
    <link rel="stylesheet" href="{!! asset('website/css/main-ar.css') !!}" />
  @endif
</head>