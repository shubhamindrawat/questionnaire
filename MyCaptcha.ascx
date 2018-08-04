<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyCaptcha.ascx.cs" Inherits="MyCaptcha" EnableViewState="true" %>
<style type="text/css">

</style>
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
           
<table style="width: 286px" >
    <tr>
        <td>
            <asp:Image ID="ImgCaptcha" runat="server" />
        </td>
    </tr>
    <tr>
        <td valign="middle">
            <asp:Label ID="LblMsg" runat="server" Text="Enter the above code here:"></asp:Label><br />
            
            <asp:TextBox ID="TxtCpatcha" runat="server" Text="" Width="150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:LinkButton ID="btnTryNewWords" runat="server" Font-Names="Tahoma" 
                Font-Size="Smaller" onclick="btnTryNewWords_Click" CausesValidation="False">Can&#39;t read? Try different 
            words.</asp:LinkButton>
                           </td>
    </tr>
</table>
                             </ContentTemplate>
        </asp:UpdatePanel>
