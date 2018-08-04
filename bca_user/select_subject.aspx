<%@ Page Language="C#" AutoEventWireup="true" CodeFile="select_subject.aspx.cs" Inherits="bca_user_Default" %>
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
<body class="header-shadow light-header">
    <form name="form1" id="form1" runat="server">
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
                        <li class="menu-item">
                            <a href="Default.aspx"><i class="menu-icon fa fa-home"></i>Home</a>
                        </li>
                        <li class=" active menu-item">
                            <a href="select_subject.aspx"><i class="fa fa-users"></i>Start Exam</a>
                            <!-- Sub Menu -->
                            <!-- end mega-submenu -->
                        </li>



                        <!-- end menu-item -->
                        <li class="menu-item">
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
                <!-- end menu -->
            </div>
            <!-- end container-fluid -->
        </div>
        <!-- end header -->


        <!-- ========== MAIN ========== -->
        <div class="main">

            <!-- ========== ANIMATED PAGE TITLE ========== -->
            <!-- SLIDE  -->

            <div class="page-title-div gradient-bg">
                <div class="container">
                    <div class="row page-title-row">

                        <div class="col-md-6 col-sm-6">
                            <h1 class="page-title">Your exam is Starting..</h1>
                            <p>We are here to help you.</p>
                        </div>

                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </div>
            <!-- end page-title-div -->
            <!-- end tp-caption -->
        </div>
        <!-- ========== STYLE 12 (PARALLAX) ========== -->

        <section class="content-section parallax-section zero-padding" data-parallax="scroll" data-image-src="../images/bg-img-1.jpg" data-speed="0.6">
            <div class="white-grad">
                <div class="container">

                    <div class="row pt60 pb60">
                        <div class="col-md-5 col-md-offset-4 col-sm-6 col-sm-offset-4 login-box">
                            <h4 style="color: #47b475">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select Subject</h4>

                            <div class="form-group">
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <center>
                                        <asp:DropDownList ID="ddll_select_exam" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                          </center>
                                        <div class="form-group">
                                            <asp:Label ID="Label2" runat="server" Text="" Style="color: red;"></asp:Label>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:Button ID="btn_start_exam" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right" Style="text-align: center" OnClick="btn_start_exam_Click" runat="server" Text="Submit" />

                                <!-- end row -->
                            </div>
                            <!-- end container -->
                        </div>

                    </div>
                </div>
                </div>
        </section>

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

        <!-- ========== SWITCHER ========== -->
    


        <script src="../scripts/vendor.js"></script>

        <script src="../scripts/plugins.js"></script>

        <script src="../scripts/main.js"></script>
    </form>
</body>

</html>




