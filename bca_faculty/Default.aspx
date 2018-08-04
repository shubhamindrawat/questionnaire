<%@ Page Title="" Language="C#" MasterPageFile="~/bca_faculty/faculty.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="bca_faculty_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                                    <th>Student Username</th>
                                    <th>Total Marks</th>
                                    <th>Paper Code</th>

                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("student_username") %></td>
                            <td><%# Eval("total_marks") %></td>
                            <td><%# Eval("paper") %></td>

                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                                    </table>
                    </FooterTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_examConnectionString1 %>" SelectCommand="SELECT s.student_username,r.status, r.total_marks,r.paper from student_master as s, result_master as r WHERE s.student_id = r.student_id and r.paper in(select pdf_code from pdf_master where ([faculty_id] = @faculty_id))">
                    <SelectParameters>
                        <asp:SessionParameter Name="faculty_id" SessionField="faculty_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
        </div>    

</asp:Content>

