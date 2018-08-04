<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="bca_user_Result" %>


<!doctype html>
<html class="no-js" lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- ========== VIEWPORT META ========== -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- ========== PAGE TITLE ========== -->
    <title>Questionnaire</title>

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
</head>
<body class="header-shadow light-header">
    <form id="form1" runat="server">
    
	<div class="header">
        <div class="container-fluid">

            <!-- ========== MENU ========== -->
			<nav class="menu">
                <div class="logo">
                    <a href="Default.aspx"><h2 style="color:#47b475">questionnaire.com</h2></a>
                </div> <!-- end logo -->

                <!-- ========== MAIN MENU ========== -->
                <ul class="main-menu">
                    <li class=" menu-item">
                        <a href="Default.aspx"><i class="menu-icon fa fa-home"></i> Home</a>
					</li>
                    <!-- end menu-item -->
                    <li class="active menu-item">
                        <a href="Profile.aspx"><i class="fa fa-user-secret"></i> User Profile</a>
                    </li> 
                    <li class="menu-item">
                        <a href="../Logout.aspx"><i class="fa fa-user-plus"></i> Logout </a>
                        <!-- Sub Menu -->
                    </li> <!-- end menu-item -->
                </ul> <!-- end main-menu -->
            </nav>
   </div> <!-- end container-fluid -->
    </div>
	<!-- ========== HEADER ========== -->
  
    <!-- ========== MAIN ========== -->
    <div class="main">

        <!-- ========== ANIMATED PAGE TITLE ========== -->
        <div class="slider-container rev_slider_wrapper">
            <div id="pageTitleHero" class="slider rev_slider pageTitleHero" data-plugin-revolution-slider data-plugin-options=''>
                <ul>
                    <!-- SLIDE  -->
                    <li data-index="rs-226" data-transition="zoomout" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000" data-rotate="0" data-saveperformance="off"
                        data-title="Intro">
                        <!-- MAIN IMAGE -->
                        <img src="../images/bg-img-5.jpg" alt="" title="Page title" width="1920" height="980" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>
                        <!-- LAYERS -->

                        <!-- LAYER NR. 1 -->
                        <!-- <div class="tp-caption tp-shape tp-shapewrapper" id="slide-226-layer-10" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" data-width="full"
                            data-height="full" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="opacity:0;s:1500;e:Power3.easeInOut;" data-transform_out="s:300;s:300;" data-start="750" data-basealign="slide" data-responsive_offset="on"
                            data-responsive="off" style="z-index: 5;text-transform:left;background-color:rgba(0, 0, 0, 0.35);border-color:rgba(0, 0, 0, 0.40);"> </div> -->

                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption NotGeneric-Title   tp-resizeme" id="slide-226-layer-1" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','-22','-29']" data-fontsize="['50','50','50','30']"
                            data-lineheight="['70','70','70','50']" data-width="none" data-height="none" data-whitespace="nowrap" data-transform_idle="o:1;" data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:1.5;sY:1.5;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
                            data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" data-mask_in="x:0px;y:0px;" data-mask_out="x:inherit;y:inherit;" data-start="1000" data-splitin="none" data-splitout="none" data-responsive_offset="on"
                            style="z-index: 7; white-space: nowrap;text-transform:left;color:#fff;"></div>

                        <!-- LAYER NR. 3 -->
                       
                        <!-- LAYER NR. 4 -->
                       
                        <!-- LAYER NR. 3 -->
                       <!-- end tp-caption -->
                    </li> <!-- end slide -->
                </ul>
            </div> <!-- end pageTitleHero -->
        </div> <!-- end slider-container -->

        <!-- ========== PANELS ========== -->
     
        <!-- ========== COLOR PANELS ========== -->
        <section class="content-section" data-parallax="scroll" data-image-src="images/bg-img-1.jpg" data-speed="0.6">
            <div class="container">
                <div class="row">
                    <div class="col-md-11 section-header text-center">
                     		<br />
									<br />
			
                        <div class="col-md-5" style="align='center';align-content: center;text-align: center;margin-left: 400px;"	 >
                        <div class="panel panel-primary">
                         			
                               <div class="panel-heading">
                                <h3 class="panel-title capitalize">Results</h3>
                            </div> <!-- end panel-heading -->
                            
							
							<div class="panel-body">
                                      <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Correct Answers : "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_correct" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Incorrect Answers : "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_incorrect" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Total Attempted : "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_attempted" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Total Marks : "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_total" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
  </div> <!-- end panel-body -->
                            <div class="panel-footer">
                         
                                Thanks You For Giving Exam. 
                                  </div>
                               <div class="panel-footer">
                         
                                Your Result send to your email,
                                    check email to downloaded result.  
                                  
                               
                               <asp:Label ID="lbl_delete" runat="server" Text=""></asp:Label>
                               </div> <!-- end panel-footer -->
                      <!-- end panel-footer -->
                        </div> <!-- end panel -->
                    </div> <!-- end col-md-4 -->

					 </div> <!-- end section-header -->

                    
                    
                    
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>

    </div> <!-- end main -->

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
    
	<script src="../scripts/vendor.js"></script>

	<script src="../scripts/plugins.js"></script>

	<script src="../scripts/main.js"></script>
        </form>
</body>
</html>