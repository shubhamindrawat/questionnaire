<%@ Page Language="C#" AutoEventWireup="true" CodeFile="end_test.aspx.cs" Inherits="bca_user_end_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
     function redirect()
        {
         var status = confirm("Exam is finished, click OK to redirect to the result page");
         if(status==true || status==false)
         {
             window.location = "Result.aspx";
         }
        }
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
