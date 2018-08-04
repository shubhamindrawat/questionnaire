<%@ Page Title="" Language="C#" MasterPageFile="~/bca_admin/admin.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Admin_Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div class="x_panel">
            <div class="x_title">
                <h2>BCA Students<small>All the present BCA students</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <table id="dataTable"  class="table table-no-border table-striped table-responsive" >
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
                            <td><%# Eval("student_enroll") %></td>
                            <td><%# Eval("student_username") %></td>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT [student_enroll], [student_username], [email], [contact_no], [gender], [dob] FROM [student_master]"></asp:SqlDataSource>
                <br />
            </div>
        </div>
    </form>
</asp:Content>

