<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="bca_user_Profile" %>

<!DOCTYPE html>

<!doctype html>
<html class="no-js" lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- ========== VIEWPORT META ========== -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- ========== PAGE TITLE ========== -->
    <title>QUESTIONNAIRE.COM</title>

    <!-- ========== META TAGS ========== -->
    <meta name="description" content="Salt - Responsive Multipurpose HTML5 Template ">
    <meta name="keywords" content="business, responsive, multi-purpose">
    <meta name="author" content="ThemesEase">

    <!-- ========== FAVICON & APPLE ICONS ========== -->
    <link rel="shortcut icon" href="../images/favicon.ico">
    <link rel="apple-touch-icon" href="../images/apple-touch-icon.png">

    <!-- ========== MINIFIED VENDOR CSS ========== -->
    <link rel="stylesheet" href="../styles/vendor.css">

    <!-- ========== MAIN CSS ========== -->
    <link rel="stylesheet" href="../styles/main.css">

    <script src="../scripts/vendor/modernizr.js"></script>
    	<style type="text/css">
 
a.nostyle{
	color:inherit;
	text-decoration:none;
	padding:0;
	margin:0;
}
.border-square {
  border-radius: 10px;
  height:100%;
  width:100%;
  padding-bottom:90px;
}
div.portfoliocard{
	position:relative;
	height:314px;
	width:485px;
	/*box-shadow:0px -1px 3px rgba(0,0,0,0.1),
				0px 2px 6px rgba(0,0,0,0.5);*/
	border-radius:5px;
	margin:10% auto;
	overflow:hidden;
	z-index:100;
                top: -67px;
                left: 0px;
            }
div.portfoliocard div.coverphoto{
	width:100%;
	height:140px;
	background:url(card.png);
    background-repeat:no-repeat;
	background-position:center center;
	border-radius:5px;
	border-top:1px solid rgba(0,0,0,0.1);
    border-bottom:1px solid rgba(0,0,0,0.1);
	/*box-shadow:inset 0px 3px 20px rgba(255,255,255,0.3),
				1px 0px 2px rgba(255,255,255,0.7);
	z-index:99;*/
}
div.portfoliocard div.left_col, div.portfoliocard div.right_col{
	float:left;
	height:100%;
}
div.portfoliocard div.left_col{
	width:30%;
	padding-top:5px;
	/*box-sizing:border-box;*/
}
div.portfoliocard div.right_col{
	width:70%;
	background:rgba(245,245,245,1);
	border-left:1px solid rgba(230,230,230,1);
	/*box-shadow:inset 0px 1px 1px rgba(255,255,255,0.7);*/
	margin-left:-1px;
	border-radius:5px;
}
div.portfoliocard div.profile_picture{
	height:100%;
	top:65px;
	left:40px;
	background-image: url('http://cache.spreadshirt.net/Public/Common/images/profile-pic-placeholder_130x130.png');
	background-size:100% 100%;
	padding:7px;
	}
div.portfoliocard div.right_col h2.name{
	font-size:30px;
	font-weight:300;
	color: rgba(30,30,30,1);
	padding:0;
	margin:10px 10px 0px 30px;
}
div.portfoliocard div.right_col h3.location{
	font-size:15px;
	font-weight:300;
	color:rgba(170,170,170,1);
	padding:0;
	margin:-5px 10px 10px 30px;
}
div.portfoliocard ul.contact_information{
	margin-top:10px;
	padding-left:30px;
	list-style-type:none;
}
div.portfoliocard ul.contact_information li{
	height:100%;
	width:180px;
	line-height:25px;
	font-weight:300;
	font-size:15px;
	color:rgba(140,140,140,1);
	text-shadow:1px 1px 1px rgba(255,255,255,0.8);
	padding:5px 0px;
	background-repeat:no-repeat;
	background-size:18px 18px;
	border-bottom:1px solid rgba(0,0,0,0.1);
	box-shadow:0px 1px 1px rgba(255,255,255,0.6);
	cursor:default;
}
div.portfoliocard ul.contact_information li:before{
	content:"";
	width:25px;
	height:100%;
	display:block;
	float:left;
	background-position:center;
	background-size:18px 18px;
	background-repeat:no-repeat;
	margin-right:5px;
	opacity:0.7;
}
div.portfoliocard ul.contact_information li:hover:before{
	opacity:1;
}
div.portfoliocard ul.contact_information li.work:before{
	background-image: url('http://schulzmarcel.de/x/icons/case_24.png');
}
div.portfoliocard ul.contact_information li.website:before{
	background-image: url('http://schulzmarcel.de/x/icons/globe_24.png');
}
div.portfoliocard ul.contact_information li.mail:before{
	background-image: url('http://schulzmarcel.de/x/icons/paper_plane_24.png');
}
div.portfoliocard ul.contact_information li.phone:before{
	background-image: url('http://schulzmarcel.de/x/icons/phone_24.png');
}
div.portfoliocard ul.contact_information li.resume:before{
	background-image: url('http://schulzmarcel.de/x/icons/inbox_24.png');
}
div.portfoliocard div.followers, div.portfoliocard div.following{
	margin:15px 0px 0px 35px;
	font-weight:300;
	font-size:16px;
	color:rgba(30,30,30,1);
}
div.portfoliocard div.follow_count{
	font-weight:400;
	font-size:25px;
	color:rgba(140,140,140,1);
}
	</style>
</head>

<!-- ==================================================
Body: Classes
header-shadow - Set shadow for header & menu
dark-menu - Change menu to dark [Don't use with light-header]
light-header - Set light background to header [Don't use with dark-menu]
dark-header - Set dark background to header
bold-menu - For bolder links
semi-trans-header - set transparency to header [Use with 'light-header' or 'dark-header']
center-logo - Logo at center
small-header - For lesser height
nav-hidden - Open nav on icon click
================================================== -->
<body class="header-shadow">
    <form id="form1" name="form1" runat="server">
        <!-- ========== HEADER ========== -->
        <div class="header">
            <div class="container-fluid">

                <!-- ========== MENU ========== -->
                <nav class="menu">
                    <div class="logo">
                        <a href="Default.aspx">
                            <h2 style="color: #47b475">questionnaire.com</h2>
                        </a>
                    </div>
                    <!-- end logo -->

                    <!-- ========== MAIN MENU ========== -->
                    <ul class="main-menu">
                        <li class=" menu-item">
                            <a href="Default.aspx"><i class="menu-icon fa fa-home"></i>Home</a>
                        </li>
                        <li class="menu-item">
                            <a href="select_subject.aspx"><i class="fa fa-users"></i>Start Exam</a>
                            <!-- Sub Menu -->
                            <!-- end mega-submenu -->
                        </li>



                        <!-- end menu-item -->
                        <li class="active menu-item">
                            <a href="Profile.aspx"><i class="fa fa-user-secret"></i>User Profile</a>
                        </li>
                        <li class="menu-item">
                            <a href="../logout.aspx"><i class="fa fa-user-plus"></i>Logout

                            </a>
                            <!-- Sub Menu -->
                        </li>
                        <!-- end menu-item -->
                    </ul>
                    <!-- end main-menu -->
                </nav>
            </div>
            <!-- end container-fluid -->
        </div>
        <!-- end header -->

        <!-- ========== MAIN ========== -->
        <div class="main">

            <!-- ========== ANIMATED PAGE TITLE ========== -->
            <div class="slider-container rev_slider_wrapper">
                <div id="pageTitleHero" class="slider rev_slider pageTitleHero" data-plugin-options='data-plugin-revolution-slider'>
                    <ul>
                        <!-- SLIDE  -->
                        <li data-index="rs-226" data-transition="zoomout" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000" data-rotate="0" data-saveperformance="off"
                            data-title="Intro">
                            <!-- MAIN IMAGE -->
                            <img src="../images/bg-img-2.jpg" alt="" title="Page title" width="1920" height="980" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>
                            <!-- LAYERS -->

                            <!-- LAYER NR. 1 -->
                            <!-- <div class="tp-caption tp-shape tp-shapewrapper" id="slide-226-layer-10" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" data-width="full"
                            data-height="full" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" data-transform_out="s:300;s:300;" data-start="750" data-basealign="slide" data-responsive_offset="on"
                            data-responsive="off" style="z-index: 5;text-transform:left;background-color:rgba(0, 0, 0, 0.35);border-color:rgba(0, 0, 0, 0.40);"> </div> -->

                            <!-- LAYER NR. 2 -->
                            <div class="tp-caption NotGeneric-Title   tp-resizeme" id="slide-226-layer-1" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','-22','-29']" data-fontsize="['50','50','50','30']"
                                data-lineheight="['70','70','70','50']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:1.5;sY:1.5;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
                                data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:0px;" data-mask_out="x:inherit;y:inherit;" data-start="1000" data-splitin="none" data-splitout="none" data-responsive_offset="on"
                                style="z-index: 7; white-space: nowrap; text-transform: left; color: #fff;">
                                User Profile
                            </div>

                            <!-- LAYER NR. 3 -->
                            <div class="tp-caption NotGeneric-SubTitle tp-resizeme" id="slide-226-layer-4" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['52','52','28','13']" data-width="none"
                                data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;s:1500;e:Power4.easeInOut;" data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                                data-mask_in="x:0px;y:[100%];s:inherit;e:inherit;" data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;" data-start="1000" data-splitin="none" data-splitout="none" data-responsive_offset="on" style="z-index: 8; white-space: nowrap; text-transform: left; color: #fff;">
                                Your one step solution for all exams
                            </div>

                            <!-- LAYER NR. 4 -->
                            <!-- LAYER NR. 3 -->
                            <!-- end tp-caption -->
                        </li>
                        <!-- end slide -->
                    </ul>
                </div>
                <!-- end pageTitleHero -->
            </div>
            <!-- end slider-container -->

            <!-- ========== STYLE 9 ========== -->
            <section class="content-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-xs-12 col-md-6 blog-box mb40" >
                                <div class="blog-img-box" style="height: 100%">
                                    <div class="portfoliocard">
                                        <div class="coverphoto"></div>
                                        <div class="left_col">
                                            <asp:Image ID="Image1" runat="server" CssClass="border-square" Height="250px" Width="150px" />
                                        </div>
                                        <div class="right_col">
                                            <br />
                                            &nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_enroll" runat="server"></asp:Label><br />
                                            &nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_uname" runat="server"></asp:Label><br />
                                            &nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_email" runat="server"></asp:Label><br />
                                            &nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_contact" runat="server"></asp:Label><br />
                                            &nbsp;&nbsp;&nbsp;<asp:Label ID="lbl_dob" runat="server"></asp:Label><br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end blog-box -->

                            <div class="col-md-6 col-sm-6 blog-box mb40">
                                <div class="blog-img-box">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <asp:TextBox ID="txt_current" TextMode="Password" class="form-control" runat="server" placeholder="Enter Current Password" Required="true"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="txt_new" TextMode="Password" class="form-control" runat="server" placeholder="Set New Password" Required="true"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:TextBox ID="txt_new_confirm" TextMode="Password" class="form-control" runat="server" placeholder="Confirm New Password" Required="true"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <asp:Label ID="lbl_error" runat="server" Text="" Style="color: red;"></asp:Label>
                                        </div>

                                        <asp:Button ID="btn_change" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right" runat="server" Text="Submit" OnClick="btn_change_Click" />
                                    </div>

                                </div>
                            </div>
                            <!-- end blog-box -->



                        </div>
                        <!-- end col-md-9 -->





                        <!-- end col-md-8 -->
                    </div>
                    <!-- end row -->
                </div>
            </section>

        </div>
        <!-- end container -->
        <!-- ==================================================
    Footer: Classes
    footer - Default footer
    dark-footer - Dark footer [Use with .footer]
    sticky-footer - Reveal footer on scroll
    ================================================== -->
        <footer class="footer footer-style-4 dark-footer" id="footer">

        <!-- ========== footer-middle ========== -->
        <div class="container footer-middle">
            <div class="row">
                <div class="col-md-12 text-center">
            <h2>Questionnaire</h2>
                </div>
                <div class="col-md-6">
                    <h6 class="footer-title lowercase">
                      <i class="fa fa-phone"></i> (0261) 456-7890 <span class="ml10 mr10">|</span>
                         <i class="fa fa-envelope"></i> <a class="__cf_email__" href="/cdn-cgi/l/email-protection" > support@questionnaire.com</a> </h6>
                </div>
                <div class="col-md-6 text-right">
                    <a href="#" class="trans pr10 pl10"><i class="fa fa-facebook"></i></a>
                    <a href="#" class="trans pr10 pl10"><i class="fa fa-twitter"></i></a>
                    <a href="#" class="trans pr10 pl10"><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="trans pr10 pl10"><i class="fa fa-dribbble"></i></a>
                    <a href="#" class="trans pr10 pl10"><i class="fa fa-youtube"></i></a>
                    <a href="#" class="trans pr10 pl10"><i class="fa fa-vimeo"></i></a>
                    <a href="#" class="trans pr10 pl10"><i class="fa fa-linkedin"></i></a>
                </div>
            </div> <!-- end row -->
        </div> <!-- end footer-middle -->

        <!-- ========== Footer - last section ========== -->
        <div class="footer-last">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                     </div>
                    <div class="col-md-6 text-right">
                        <a href="#" class="mr10">Terms of Use</a> <a href="#">Privacy Policy</a>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </div> <!-- end footer-last -->

        <!-- ========== Scroll to top button ========== -->
        <div class="scroll-to-top trans"><i class="fa fa-angle-up"></i></div>
    </footer>
        <!-- ========== LOADER ========== -->


        <script src="../scripts/vendor.js"></script>

        <script src="../scripts/plugins.js"></script>

        <script src="../scripts/main.js"></script>
    </form>
</body>

</html>
