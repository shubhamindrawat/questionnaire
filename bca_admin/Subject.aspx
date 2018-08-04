<%@ Page Title="" Language="C#" MasterPageFile="~/bca_admin/admin.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Admin_Subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="form-horizontal form-label-left">
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
            <div class="x_content">
                <br />
                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Semester"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:DropDownList runat="server" ID="ddl_insert_sem" required="required" class="form-control col-md-7 col-xs-12" >
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Subject *"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:TextBox runat="server" ID="txt_subject" required="required" class="form-control col-md-7 col-xs-12" />
                    </div>
                </div>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <asp:Button runat="server" class="btn btn-primary" Text="Reset" ID="btn_reset" OnClick="btn_reset_Click" />
                        <asp:Button runat="server" class="btn btn-success" Text="Submit" ID="btn_insert" OnClick="btn_insert_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="x_panel">
            <div class="x_title">
                <h2>BCA Subjects <small>Current BCA Subjects</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="x_content">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Subject"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddl_display_sem" runat="server" AutoPostBack="True" class="form-control col-md-7 col-xs-12" required="required">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="subject_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="table table-striped jambo_table bulk_action" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="subject_id" HeaderText="subject_id" ReadOnly="True" SortExpression="subject_id" HeaderStyle-CssClass="heading"></asp:BoundField>
                                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" HeaderStyle-CssClass="heading"></asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [subject_id], [subject] FROM [subject_master] WHERE ([sem] = @sem)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_display_sem" Name="sem" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</asp:Content>

