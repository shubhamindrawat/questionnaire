<%@ Page Title="" Language="C#" MasterPageFile="~/bca_faculty/faculty.master" AutoEventWireup="true" CodeFile="add_obj_questions.aspx.cs" Inherits="bca_faculty_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="form-horizontal form-label-left">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="x_panel">
            <div class="x_title">
                <h2>Add Subjects <small>Add new subjects for BCA</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content" >
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Subject"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddl_insert_subject" runat="server" class="form-control col-md-7 col-xs-12" AutoPostBack="True" OnSelectedIndexChanged="ddl_insert_subject_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Unit Name"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddl_insert_unit" runat="server" class="form-control col-md-7 col-xs-12"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Question"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:TextBox ID="txt_ques" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:CheckBox ID="chk_question" runat="server" OnCheckedChanged="chk_question_CheckedChanged" AutoPostBack="True" Text="Include Graphics Image" class="control-label col-md-5 col-sm-5 col-xs-12" />
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:FileUpload ID="upload_graphics" runat="server" Visible="false" class="control-label col-md-7 col-sm-3 col-xs-12" />
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Option 1"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:TextBox ID="txt_option_1" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Option 2"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:TextBox ID="txt_option_2" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Option 3"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:TextBox ID="txt_option_3" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Option 4"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:TextBox ID="txt_option_4" runat="server" class="form-control col-md-7 col-xs-12"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Correct Option"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:DropDownList ID="ddl_correct_option" runat="server" class="form-control col-md-7 col-xs-12">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <asp:Button runat="server" class="btn btn-primary" Text="Reset" ID="btn_reset" />
                        <asp:Button runat="server" class="btn btn-success" Text="Submit" ID="btn_submit" OnClick="btn_submit_Click" />
                    </div>
                </div>
            </div>

        </div>
        

    </form>

</asp:Content>

