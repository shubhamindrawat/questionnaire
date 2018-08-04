<%@ Page Title="" Language="C#" MasterPageFile="~/bca_admin/admin.master" AutoEventWireup="true" CodeFile="Syllabus.aspx.cs" Inherits="Admin_Syllabus" %>

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
            <div class="x_content">
                <br />
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
            
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Semester"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:DropDownList ID="ddl_display_sem" runat="server" AutoPostBack="True" class="form-control col-md-7 col-xs-12" DataSourceID="SqlDataSource4" DataTextField="sem" DataValueField="sem" required="required">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT DISTINCT [sem] FROM [subject_master] ORDER BY [sem]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Subject"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:DropDownList ID="ddl_insert_subject" runat="server" AutoPostBack="True" class="form-control col-md-7 col-xs-12" DataSourceID="SqlDataSource3" DataTextField="subject" DataValueField="subject_id" required="required">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [subject_id], [subject], [sem] FROM [subject_master] WHERE ([sem] = @sem)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_display_sem" Name="sem" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Unit Name"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:TextBox runat="server" ID="txt_unit" required="required" class="form-control col-md-7 col-xs-12" />
                    </div>
                </div>
            
                    </ContentTemplate>
                    </asp:UpdatePanel>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <asp:Button runat="server" class="btn btn-primary" Text="Reset" ID="btn_reset" OnClick="Unnamed2_Click" />
                        <asp:Button runat="server" class="btn btn-success" Text="Submit" ID="btn_submit" OnClick="Unnamed3_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="x_panel">
            <div class="x_title">
                <h2>Current Units <small>Units of Subjects</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="x_content">
                        <div class="form-group">
                    <asp:Label ID="Label4" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Semester"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-control col-md-7 col-xs-12" DataSourceID="SqlDataSource5" DataTextField="sem" DataValueField="sem" required="required">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT DISTINCT [sem] FROM [subject_master] ORDER BY [sem]"></asp:SqlDataSource>
                    </div>
                </div>
        
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Subject"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddl_display_subject" runat="server" class="form-control col-md-7 col-xs-12" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="subject" DataValueField="subject_id" required="required">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [subject_id], [subject], [sem] FROM [subject_master] WHERE ([sem] = @sem)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="sem" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="table table-striped jambo_table bulk_action" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="unit_id" HeaderStyle-CssClass="heading" HeaderText="unit_id" SortExpression="unit_id" />
                                    <asp:BoundField DataField="unit_name" HeaderStyle-CssClass="heading" HeaderText="unit_name" SortExpression="unit_name" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [unit_id], [unit_name] FROM [unit_master] WHERE ([subject_id] = @subject_id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_display_subject" Name="subject_id" PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</asp:Content>

