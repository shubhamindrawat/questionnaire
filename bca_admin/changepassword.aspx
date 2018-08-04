<%@ Page Title="" Language="C#" MasterPageFile="~/bca_admin/admin.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="bca_admin_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" class="form-horizontal form-label-left">

        <div class="x_panel">
            <div class="x_title">
                <h2>Admin Profile</h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br />
                <div class="form-group">
                    <asp:Image runat="server" alt="..." ID="Image1" ImageAlign="Left" />
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-2 col-xs-10" Text="Admin Name"></asp:Label>
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-2 col-xs-10" Text="Admin Name"></asp:Label>
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-2 col-xs-10" Text="Admin Name"></asp:Label>


                </div>
                <div class="form-group">
                    <asp:FileUpload ID="finput" runat="server" multiple="false" accept="image/jpg/png" />
                </div>
                <asp:Button ID="Button1" runat="server" Text="Change Profile Pic" OnClick="Button1_Click1" />
            </div>
        </div>


        <div class="x_panel">
            <div class="x_title">
                <h2>Change Password </h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
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
    </form>

</asp:Content>

