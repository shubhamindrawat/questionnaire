<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="bca_user_Login" %>

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
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- ========== MINIFIED VENDOR CSS ========== -->
     <link rel="stylesheet" href="styles/vendor.css">

    <!-- ========== MAIN CSS ========== -->
    <link rel="stylesheet" href="styles/main.css">

    <script src="scripts/vendor/modernizr.js"></script>
</head>

<body class="header-shadow">
    <form runat="server" id="form1">
    <!-- ========== HEADER ========== -->
    <div class="header">
        <div class="container-fluid">

            <!-- ========== MENU ========== -->
            <nav class="menu">
                   <div class="logo">
                    <a href="Default.aspx"><h2 style="color:#47b475">questionnaire.com</h2></a>
                </div> <!-- end logo -->

                <!-- ========== MAIN MENU ========== -->
                <ul class="main-menu">
                    <li class="menu-item">
                        <a href="Default.aspx"><i class="menu-icon fa fa-home"></i> Home</a>
					</li>
                    <li class="menu-item">
                        <a href="Student_register.aspx"><i class="fa fa-users"></i> Student Registration</a>
                     </li>
                   <li class="menu-item">
                        <a href="Faculty_register.aspx"><i class="fa fa-user-secret"></i> Faculty Registration</a>
                    </li> 
                    <li class="active menu-item">
                        <a href="Login.aspx"><i class="fa fa-user-plus"></i> Login

                        </a>
                  </li> <!-- end menu-item -->
                </ul> <!-- end main-menu -->
            </nav> <!-- end menu -->
        </div> <!-- end container-fluid -->
    </div> <!-- end header -->

    <div class="main">

        <div class="parallax-window" data-parallax="scroll" data-image-src="images/demo-img-1.jpg" data-speed="0.6">
            <div class="container">
                <div class="row pt60 pb60">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 login-box">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Email address</label>
                                 <asp:TextBox ID="txt_user" class="form-control" runat="server" placeholder="Email Address" Required="true" autocomplete="false"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Password</label>
                                  <asp:TextBox ID="txt_pass" TextMode="Password" runat="server" class="form-control" placeholder="Password" Required="true"></asp:TextBox>
                     
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lbl_error" runat="server" Text="" style="color:red;"></asp:Label>
                            </div>
                          <asp:Button ID="btn_login" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right" runat="server" Text="Submit" OnClick="btn_Login_Click" />
                          <div class="form-group">
                                    <asp:HyperLink ID="hyper_login" NavigateUrl="Student_register.aspx"  runat="server">New Users ?</asp:HyperLink>
                              </div>
                              <div class="form-group">
                                    <asp:HyperLink ID="hyper_forgetpass" NavigateUrl="Forget_Password.aspx" runat="server">Forgot Password ?</asp:HyperLink>
                           </div>
                    </div> <!-- end login-box -->
                </div> <!-- end row -->
            </div> <!-- end container -->
        </div>

    </div> 
          <footer class="footer dark-footer" id="footer">

        <!-- ========== top footer ========== -->
        <div class="container footer-top">
             <!-- end row -->
        </div> <!-- end footer-top -->

        <!-- ========== footer-middle ========== -->
        <div class="container footer-middle">
            <div class="row">
                <div class="col-md-6">
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-facebook"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-twitter"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-google-plus"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-dribbble"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-youtube"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-vimeo"></i></a>
                    <a href="#" class="trans pr10 pl10 "><i class="fa fa-linkedin"></i></a>
                </div> <!-- end col-md-6 -->
              </div> <!-- end row -->
        </div> <!-- end footer-middle -->

        <!-- ========== Footer - last section ========== -->
        <div class="footer-last">
            <div class="container">
                <div class="row">
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
    <div class="page-loader">
        <div class="spinner"></div>
    </div>

    <!-- ========== SWITCHER ========== -->
   <script src="scripts/vendor.js"></script>

	<script src="scripts/plugins.js"></script>

	<script src="scripts/main.js"></script>

    <script type="text/javascript">
        $(function($) {
            $('#js-grid-faq').cubeportfolio({
                filters: '#js-filters-faq',
                defaultFilter: '*',
                animationType: 'sequentially',
                gridAdjustment: 'default',
                displayType: 'default',
                caption: 'expand',
                gapHorizontal: 0,
                gapVertical: 0
            });
        });
    </script>
        </form>
</body>

</html>