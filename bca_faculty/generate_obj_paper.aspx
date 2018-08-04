<%@ Page Title="" Language="C#" MasterPageFile="~/bca_faculty/faculty.master" AutoEventWireup="true" CodeFile="generate_obj_paper.aspx.cs" Inherits="bca_faculty_generate_paper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="form-horizontal form-label-left">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="x_panel">
            <div class="x_title">
                <h2>Make Paper <small>Make papers for BCA</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Select Subject"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddl_insert_subject" runat="server" class="form-control col-md-7 col-xs-12" AutoPostBack="True"></asp:DropDownList>
                            </div>
                        </div>
                       

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Select Marks"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddl_marks" runat="server" class="form-control col-md-7 col-xs-12">
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                    <asp:ListItem>70</asp:ListItem>
                                    <asp:ListItem>100</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table jambo_table bulk_action" GridLines="None" ShowHeader="False" BorderStyle="Outset">
                                        <Columns>
                                            <asp:BoundField DataField="unit_name" HeaderText="unit_name" SortExpression="unit_name" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:TextBox ID="TextBox" runat="server" Text="0"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [unit_name] FROM [unit_master] WHERE ([subject_id] = @subject_id)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="ddl_insert_subject" Name="subject_id" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <asp:Button runat="server" class="btn btn-primary" Text="Reset" ID="btn_reset" CausesValidation="False" OnClick="btn_reset_Click" />
                                <asp:Button runat="server" class="btn btn-info" Text="Validate Total" ID="btn_validate" CausesValidation="False" OnClick="btn_validate_Click" />
                                <asp:Button runat="server" class="btn btn-success" Text="Submit" ID="btn_submit" OnClick="btn_submit_Click" Visible="False" />
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="x_panel">
            <div class="x_title">
                <h2>View Paper <small>Generate papers for BCA</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                        <div class="form-group">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" EmptyDataText="No files uploaded" DataSourceID="SqlDataSource2" CssClass="table table-striped jambo_table bulk_action" CellPadding="4" ForeColor="#333333" GridLines="None" >
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="pdf_code" HeaderText="pdf_code" SortExpression="pdf_code" />
                                    <asp:TemplateField HeaderText="Download">
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" Text="Download" class="btn btn-success" CommandArgument = '<%# Container.DataItemIndex %>' OnCommand="Button1_Command" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [pdf_code] FROM [pdf_master] WHERE ([faculty_id] = @faculty_id)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="faculty_id" SessionField="faculty_id" Type="Int32" />
                                    </SelectParameters>
                            </asp:SqlDataSource>
                  </div>
            </div>
        </div>
    </form>
</asp:Content>

