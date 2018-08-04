<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change_password.aspx.cs" Inherits="bca_user_Change_password" %>

<!DOCTYPE html>

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
                    <a href="Home.aspx"><h2 style="color:#47b475">questionnaire.com</h2></a>
                </div> <!-- end logo -->

                <!-- ========== MAIN MENU ========== -->
                <ul class="main-menu">
                    <li class="menu-item">
                        <a href="Home1.aspx"><i class="menu-icon fa fa-home"></i> Home</a>
					</li>
                    <li class="menu-item">
                        <a href="Student_exam.aspx"><i class="fa fa-users"></i> Start Exam</a>
                        <!-- Sub Menu -->
                        <!-- end mega-submenu -->
                    </li>
                    
                    
                    
                     <!-- end menu-item -->
                    <li class=" active menu-item">
                        <a href="Change_Password.aspx"><i class="fa fa-user-secret"></i> Change Password</a>
                    </li> 
                    <li class="menu-item">
                        <a href="Logout.aspx"><i class="fa fa-user-plus"></i> Logout

                        </a>
                        <!-- Sub Menu -->
                    </li> <!-- end menu-item -->
                </ul> <!-- end main-menu -->
            </nav> <!-- end menu -->
        </div> <!-- end container-fluid -->
    </div> <!-- end header -->

    <!-- ========== MAIN ========== -->
    <div class="main">

        <div class="parallax-window" data-parallax="scroll" data-image-src="images/demo-img-1.jpg" data-speed="0.6">
            <div class="container">
                <div class="row pt60 pb60">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 login-box">
                        <h4 style="color:#47b475">Change Password</h4>
                        
                        <div class="form-group">
                                <label for="exampleInputEmail1">Current Password:</label>
                                 <asp:TextBox ID="txt_current" class="form-control" runat="server" placeholder="Enter Current Password" Required="true"></asp:TextBox>
                            </div>
                        <div class="form-group">
                                <label for="exampleInputEmail1">Set New Password:</label>
                                 <asp:TextBox ID="txt_new" class="form-control" runat="server" placeholder="Set New Password" Required="true"></asp:TextBox>
                            </div>
                        
                        <div class="form-group">
                                <label for="exampleInputEmail1">Confirm New Password:</label>
                                 <asp:TextBox ID="txt_new_confirm" class="form-control" runat="server" placeholder="Confirm New Password" Required="true"></asp:TextBox>
                            </div>


                        <div class="form-group">
                                <asp:Label ID="lbl_error" runat="server" Text="" style="color:red;"></asp:Label>
                            </div>
                         
                            <asp:Button ID="btn_change" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right" runat="server" Text="Submit" OnClick="btn_change_Click" />
                            
                          
                       </div> <!-- end login-box -->
                </div> <!-- end row -->
            </div> <!-- end container -->
        </div>

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
