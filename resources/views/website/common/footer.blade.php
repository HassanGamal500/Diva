<!-- start Footer -->
<footer class="grey-bg py-5">
  <div class="container">
    <div class="row mt-3">
      <div class="col-md-6 col-lg-4">
        <h4 class="mb-3">{{trans('website.app name')}}</h4>
        <p class="footer-txt">
          {{aboutUs()[0]->about_description_part}}
        </p>

      </div>
      <div class="col-md-6 col-lg-3">
        <h5 class="mb-3">{{trans('website.Customer Services')}}</h5>
        <ul>
          <li>
            <a href="{{url('contactUs')}}" class="footer-links">
              {{trans('website.Contact Us')}}
            </a>
          </li>
          <li class="pt-2">
            <a href="{{url('refunds')}}" class="footer-links">
              {{trans('website.Returns & Refunds')}}
            </a>
          </li>
          <li class="pt-2">
            <a href="{{url('how')}}" class="footer-links">
              {{trans('website.How Do We Work')}}
            </a>
          </li>
          <li class="pt-2">
            <a href="{{url('faq')}}" class="footer-links">
              {{trans('website.faqs')}}
            </a>
          </li>
        </ul>
      </div>
      <div class="col-md-6 col-lg-3">
        <h5 class="mb-3">{{trans('website.Our Application')}}</h5>
        <ul>
          <li>
            <a href="{{allSetting()[110]->value}}" class="footer-links" target="_blank">
              {{trans('website.App Store')}}
            </a>
          </li>
          <li class="pt-2">
            <a href="{{allSetting()[109]->value}}" class="footer-links" target="_blank">
              {{trans('website.Google Play')}}
            </a>
          </li>
        </ul>
      </div>
      <div class="col-md-6 col-lg-2">
        <h5 class="mb-3">{{trans('website.Social Media')}}</h5>
        <div class="d-flex">
             <a href="{{allSetting()[52]->value}}" class="footer-links pr-4  fa-2x" target="_blank">
                <i class="fab fa-twitter"></i>
              <!--{{trans('website.Twitter')}}-->
            </a>
           <a href="{{allSetting()[50]->value}}" class="footer-links pr-4  fa-2x" target="_blank">
                <i class="fab fa-facebook-f"></i>
              <!--{{trans('website.Facebook')}}-->
            </a>
              <a href="{{allSetting()[122]->value}}" class="footer-links  fa-2x" target="_blank">
                <i class="fab fa-instagram"></i>
              <!--{{trans('website.Instgram')}}-->
            </a>
        </div>
        <!--<ul>-->
        <!--  <li>-->
        <!--    <a href="{{allSetting()[52]->value}}" class="footer-links" target="_blank">-->
        <!--        <i class="fab fa-twitter"></i>-->
        <!--      {{trans('website.Twitter')}}-->
        <!--    </a>-->
        <!--  </li>-->
        <!--  <li class="pt-2">-->
        <!--    <a href="{{allSetting()[50]->value}}" class="footer-links" target="_blank">-->
        <!--        <i class="fab fa-facebook-f"></i>-->
        <!--      {{trans('website.Facebook')}}-->
        <!--    </a>-->
        <!--  </li>-->
        <!--  <li class="pt-2">-->
        <!--    <a href="{{allSetting()[122]->value}}" class="footer-links" target="_blank">-->
        <!--        <i class="fab fa-instagram"></i>-->
        <!--      {{trans('website.Instgram')}}-->
        <!--    </a>-->
        <!--  </li>-->
        <!--</ul>-->
      </div>
      <div class="col-12 text-center">
        <hr />
        <span>
          {{trans('website.Developed by')}}
        </span>
        <a href="https://irondot.com/" target="_blank"><span>{{trans('website.IRONDOT')}}</span></a>
      </div>

    </div>
  </div>
</footer>
<!-- end Footer -->