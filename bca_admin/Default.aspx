<%@ Page Title="" Language="C#" MasterPageFile="~/bca_admin/admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div class="x_panel">
                 <div class="x_title">
                    <h2>BCA Faculty<small>All the present BCA Faculty Whoes Generate Papers.</small></h2>
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
                            <table id="dataTable" class="table table-no-border table-striped table-responsive">
                                <thead>
                                    <tr>
                                        <th>Faculty Username</th>
                                        <th>Generate Paper</th>
                                        <th>Gereate Total Paper</th>
                                        <th>Total Marks</th>

                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("faculty_username") %></td>
                                <td><%# Eval("subject") %></td>
                                <td><%# Eval("pdf_code") %></td>
                                <td><%# Eval("paper_marks") %></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                                    </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT f.faculty_username,s.subject,p.pdf_code,p.paper_marks FROM faculty_master as f, pdf_master as p, subject_master as s WHERE f.faculty_id = p.faculty_id and s.subject_id = p.subject_id  "></asp:SqlDataSource>
                    <br />
                </div>
       </div>
    </form>
</asp:Content>