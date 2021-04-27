@extends('index')
@section('title', 'Thông tin về chúng tôi')
@section('content')
<div class="breadcrumb-area">
    <div class="container">
        <div class="breadcrumb-content">
            <ul>
                <li><a href="{{route('home')}}">Home</a></li>
                <li class="active">About Us</li>
            </ul>
        </div>
    </div>
</div>

<div class="team-area pt-60 pt-sm-44">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="li-section-title capitalize mb-25">
                    <h2><span>TEAM DAV</span></h2>
                </div>
            </div>
        </div> <!-- section title end -->
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="team-member mb-30 mb-sm-60">
                    <div class="team-thumb">
                        <img src="{{asset('images/team/1.jpg')}}" alt="Our Team Member">
                    </div>
                    <div class="team-content text-center">
                        <h3>Trần Phúc Lộc</h3>
                        <p>Trưởng Nhóm</p>
                        <a href="#">info@example.com</a>
                        <div class="team-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                        </div>
                    </div>
                </div>
                </div>
            </div>  <!-- end single team member -->
           
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="team-member mb-60 mb-sm-30 mb-xs-30">
                    <div class="team-thumb">
                        <img src="{{asset('images/team/2.jpg')}}" alt="Our Team Member">
                    </div>
                    <div class="team-content text-center">
                        <h3>Trần Tấn Phát</h3>
                        <p>Thành viên 1</p>
                        <a href="#">info@example.com</a>
                        <div class="team-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                        </div>
                    </div>
                   
                </div>
            </div> <!-- end single team member -->
            
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="team-member mb-30 mb-sm-60">
                    <div class="team-thumb">
                        <img src="{{asset('images/team/3.jpg')}}" alt="Our Team Member">
                    </div>
                    <div class="team-content text-center">
                        <h3>Nguyễn Minh Ánh</h3>
                        <p>Thành viên 2</p>
                        <a href="#">info@example.com</a>
                        <div class="team-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                        </div>
                    </div>
                
                </div>
            </div> <!-- end single team member -->
            
             <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="team-member mb-60 mb-sm-30 mb-xs-30">
                    <div class="team-thumb">
                        <img src="{{asset('images/team/4.jpg')}}" alt="Our Team Member">
                    </div>
                    <div class="team-content text-center">
                        <h3>Trần Hoài Nam</h3>
                        <p>Thành viên 3</p>
                        <a href="#">info@example.com</a>
                        <div class="team-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                        </div>
                    </div>
                </div>
            </div> <!-- end single team member -->
        </div>
        </div>
    </div>
</div>
<!-- team area wrapper end -->
@endsection