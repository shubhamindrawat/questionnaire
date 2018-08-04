<%@ Page Title="" Language="C#" MasterPageFile="~/bca_admin/admin.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="bca_admin_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" class="form-horizontal form-label-left">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Admin Profile <small>Admin Activity </small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                        <div class="profile_img">
                            <div id="crop-avatar">
                                <!-- Current avatar -->

                                <asp:Image ID="Image1" runat="server" class="img-responsive avatar-view" />
                            </div>
                        </div>
                        <h3>Admin</h3>

                        <ul class="list-unstyled user_data">
                            <li><i class="fa fa-map-marker user-profile-icon"></i>Surat,Gujrat.
                            </li>

                            <li>
                                <i class="fa fa-briefcase user-profile-icon"></i>Software Engineer
                            </li>


                        </ul>

                        <a class="btn btn-success"><i class="fa fa-edit m-right-xs"></i>Edit Profile</a>
                        <br>

                        <!-- start skills -->
                        <!-- end of skills -->

                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">

                        <div class="profile_title">
                            <div class="col-md-6">
                                <h2>Change Password</h2>
                            </div>
                            <div class="col-md-6">
                                <div id="reportrange" class="pull-right" style="margin-top: 5px; background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #E6E9ED">
                                </div>
                            </div>
                        </div>
                        <!-- start of user-activity-graph -->
                        <div id="graphbar" style="width: 100%; height: 280px;">
                            <div class="x_panel">
                                <div class="x_content">
                                    <br />
                                    <div class="form-group">
                                        <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Enter Current Password"></asp:Label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox runat="server" ID="txt_current" class="form-control col-md-7 col-xs-12" TextMode="Password" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Current Password"
                                                ControlToValidate="txt_current" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Enter New Password"></asp:Label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox runat="server" ID="txt_current_new" class="form-control col-md-7 col-xs-12" TextMode="Password" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter New Password"
                                                ControlToValidate="txt_current_new" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Confirm New Password"></asp:Label>
                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                            <asp:TextBox runat="server" ID="txt_current_new_confirm" class="form-control col-md-7 col-xs-12" TextMode="Password" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Confirm  Password"
                                                ControlToValidate="txt_current_new_confirm" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <asp:Label runat="server" Text="" ID="lbl_error" Style="text-align: center" ForeColor="Red"></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                            <asp:Button runat="server" class="btn btn-primary" Text="Reset" ID="btn_reset" />
                                            <asp:Button runat="server" class="btn btn-success" Text="Submit" ID="btn_submit" OnClick="Button1_Click" />
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             
            </div>
        </div>
    </form>
</asp:Content>

