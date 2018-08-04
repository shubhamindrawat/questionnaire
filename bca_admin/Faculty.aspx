  <%@ Page Title="" Language="C#" MasterPageFile="~/bca_admin/admin.master" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Admin_Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="form-horizontal form-label-left">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="x_panel">
            <div class="x_title">
                <h2>BCA Faculties<small>All the present BCA faculties</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource6">
                    <HeaderTemplate>
                        <table id="dataTable"  class="table table-no-border table-striped table-responsive">
                            <thead>
                                <tr>
                                    <th>Endrollment ID</th>
                                    <th>UserName</th>
                                    <th>Email</th>
                                    <th>Contact No.</th>
                                    <th>Gender</th>
                                    <th>Birth Date</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("faculty_enroll") %></td>
                            <td><%# Eval("faculty_username") %></td>
                            <td><%# Eval("email") %></td>
                            <td><%# Eval("contact_no") %></td>
                            <td><%# Eval("gender") %></td>
                            <td><%# Eval("dob") %></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                 </table>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [faculty_enroll], [faculty_username], [email], [contact_no], [gender], [dob] FROM [faculty_master]"></asp:SqlDataSource>
                <br />
            </div>
      </div>
 <div class="x_panel">
            <div class="x_title">
                <h2>Allocate Subjects<small>Allocate subjects to the faculties</small></h2>
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
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Faculty Name"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:DropDownList runat="server" ID="ddl_insert_faculty" required="required" class="form-control col-md-7 col-xs-12" DataSourceID="SqlDataSource1" DataTextField="faculty_username" DataValueField="faculty_id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [faculty_username], [faculty_id] FROM [faculty_master]"></asp:SqlDataSource>
                    </div>
                </div>


                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Select Semester"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:DropDownList runat="server" ID="ddl_select_sem" required="required" class="form-control col-md-7 col-xs-12" AutoPostBack="true" DataSourceID="SqlDataSource3" DataTextField="sem" DataValueField="sem">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT DISTINCT [sem] FROM [subject_master]"></asp:SqlDataSource>                      
                    </div>
                </div>
               

                <div class="form-group">
                    <asp:Label runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Subject"></asp:Label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <asp:DropDownList runat="server" ID="ddl_insert_subject" required="required" class="form-control col-md-7 col-xs-12" DataSourceID="SqlDataSource4" DataTextField="subject" DataValueField="subject_id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [subject_id], [subject] FROM [subject_master] WHERE ([sem] = @sem)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_select_sem" Name="sem" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                        <asp:Button runat="server" class="btn btn-success" Text="Submit" ID="btn_insert" OnClick="btn_insert_Click" />
                        <asp:Label runat="server" ID="lbl_error" ForeColor="Red"></asp:Label>
                    </div>
                </div>
            </div>
        </div>

        <div class="x_panel">
            <div class="x_title">
                <h2>BCA Faculties & Their Subjects<small>Subjects allocated to the faculties</small></h2>
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
                            <asp:Label ID="Label1" runat="server" class="control-label col-md-3 col-sm-3 col-xs-12" Text="Faculty Name"></asp:Label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <asp:DropDownList ID="ddl_display_faculty" runat="server" DataSourceID="SqlDataSource2" DataTextField="faculty_username" DataValueField="faculty_id" AutoPostBack="true" class="form-control col-md-7 col-xs-12"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [faculty_id], [faculty_username] FROM [faculty_master]"></asp:SqlDataSource>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" CssClass="table table-striped jambo_table bulk_action" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="faculty_username" HeaderText="Faculty Name" SortExpression="faculty_username" />
                                    <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
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
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT b.faculty_username, c.subject FROM faculty_subjects_master AS a INNER JOIN faculty_master AS b ON a.faculty_id = b.faculty_id INNER JOIN subject_master AS c ON a.subject_id = c.subject_id WHERE (a.faculty_id = @faculty_id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_display_faculty" Name="faculty_id" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>

                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</asp:Content>

