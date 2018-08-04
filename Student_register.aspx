<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_register.aspx.cs" Inherits="bca_user_Student_register" %>

<%@ Register Src="~/MyCaptcha.ascx" TagPrefix="uc1" TagName="MyCaptcha" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<!DOCTYPE html>

<html class="no-js" lang="en">

<head runat="server">

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
     <script type="text/javascript">
         function redirect() {
             var status = confirm("Send Mail Error.Please try again.");
             if (status == true || status == false) {
                 window.location = "Student_register.aspx";
             }
         }
    </script>
 <script
  src="https://code.jquery.com/jquery-3.1.1.js"
  integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="
  crossorigin="anonymous"></script>  

    <script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <link href="assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
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
<body class="header-shadow" style="background-color:#1f2120">

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
                    <li class="active menu-item">
                        <a href="Student_register.aspx"><i class="fa fa-users"></i> Student Registration</a>
                        <!-- Sub Menu -->
                        <!-- end mega-submenu -->
                    </li>
                    
                    
                    
                     <!-- end menu-item -->
                    <li class="menu-item">
                        <a href="Faculty_register.aspx"><i class="fa fa-user-secret"></i> Faculty Registration</a>
                    </li> 
                    <li class="menu-item">
                        <a href="Login.aspx"><i class="fa fa-user-plus"></i> Login

                        </a>
                        <!-- Sub Menu -->
                    </li> <!-- end menu-item -->
                </ul> <!-- end main-menu -->
            </nav>
            
             <!-- end menu -->
        </div> <!-- end container-fluid -->
    </div> <!-- end header -->
    <!-- ========== MAIN ========== -->
    <div class="main">

        <div class="parallax-window" data-parallax="scroll"  data-speed="0.6">
            <div class="container">
                <div class="row pt60 pb60">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 login-box">
                        <h4 style="color:#47b475">Student Register</h4>
                
                        <form runat="server" name="form1">
                             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            
                         

                            <div class="form-group">
                                <label for="name">Student ID:</label>
                                <asp:TextBox ID="txt_studentid" class="form-control" runat="server" placeholder="Enter Student id" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="You Must Enter Student id"
                                ControlToValidate="txt_studentid" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txt_studentid" runat="server" ErrorMessage="Please Enter 16 Digit Student id " ValidationExpression="^[0-9]{16}$" Display="Dynamic"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="username">UserName:</label>   
                                <asp:TextBox ID="txt_username" class="form-control" runat="server" placeholder="Enter UserName" ></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="You Must Enter UserName"
                                ControlToValidate="txt_username" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txt_username" runat="server" ErrorMessage="First Letter Must be Capital" ValidationExpression="^[A-Z]+[a-zA-Z 0-9]*" Display="Dynamic"></asp:RegularExpressionValidator> 
                            </div>

                            <div class="form-group">
                                <label for="email">Email:</label>   
                                <asp:TextBox ID="txt_email" class="form-control" runat="server" placeholder="Enter Email Address" ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ErrorMessage="Plz Enter Correct Email Format" ControlToValidate="txt_email" ValidationExpression="[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ForeColor="red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="You Must Enter Email"
                                ControlToValidate="txt_email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            

                            <div class="form-group">
                                <label for="contant">Contact no:</label>
                                <asp:TextBox ID="txt_contact" class="form-control" runat="server" placeholder="Enter Contact No" ></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="txt_contact"
                                ErrorMessage="You Must Enter Valid Number" ForeColor="Red" MaximumValue="9999999999"
                                MinimumValue="7000000000" Display="Dynamic"></asp:RequiredFieldValidator>
                           
                            </div>

                                 <div class="form-group">
                                   <label for="contant">Select Gender:</label>
                                        <input id="r1" class="st-radio" name="gender" type="radio" value="Male" runat="server"  checked=""/>
                                        <label for="r1" class="st-radio-2-label" >Male</label>
                                   <input id="r2" class="st-radio" name="gender" type="radio" value="Female" runat="server" />
                                        <label for="r2" class="st-radio-2-label">Female</label>
                               </div>

                            <div class="form-group">
                                <label for="dob">Birthdate:</label>
                                <asp:TextBox ID="txt_dob" class="form-control " runat="server" placeholder="DD/MM/YYYY" data-provide="datepicker-inline" ></asp:TextBox> 
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="You Must Select DOB"
                                Display="Dynamic" ControlToValidate="txt_dob" ForeColor="Red"></asp:RequiredFieldValidator>
                       
                            </div>

                                    <div class="form-group">
                                     <label for="dob">Select Profile File Pic:</label>
                                           <asp:FileUpload ID="finput" runat="server" multiple="false" accept="image/jpg/png" />
                                        </div>
                                     <div class="form-group">
                                        <uc1:MyCaptcha runat="server" ID="MyCaptcha" />
                                     </div>
                             <div class="form-group">
                                <asp:Label ID="lbl_error" runat="server" Text="" style="color:red;"></asp:Label>
                            </div>
                     <asp:Button ID="btn_register" runat="server" class="st-btn primary-btn hvr-back hvr-sweep-to-right pull-right" Text="Register" OnClick="btn_register_Click" />
                         <div class="form-group">
                                    <asp:HyperLink ID="hyper_login" NavigateUrl="~/Login.aspx" runat="server">Already Register ?</asp:HyperLink>
                              </div>

                        </form>
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
        $(function ($) {
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
</body>

</html>
