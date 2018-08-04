<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alert.aspx.cs" Inherits="bca_user_Alert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
     function redirect()
        {
         var status = confirm("Soory You Are Alreay Giving Exam And Your Exam Result Will Send To Your Email Please Check Email");
         if(status==true || status==false)
         {
             window.location = "Default.aspx";
         }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
