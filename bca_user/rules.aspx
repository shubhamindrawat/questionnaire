<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rules.aspx.cs" Inherits="bca_user_rules1" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>QUESTIONNAIRE.COM</title>
    <!-- ========== FAVICON & APPLE ICONS ========== -->
    <link rel="shortcut icon" href="../images/favicon.ico">
    <link rel="apple-touch-icon" href="../images/apple-touch-icon.png">

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../Model/bootstrap.min.css" rel="stylesheet" />
    <script src="../Model/jquery.min.js"></script>
    <script src="../Model/bootstrap.min.js"></script>
    
    <script>
        jQuery(function () {
            jQuery('#body11').click();
        });
</script>
 </head>
<body id="body11" data-toggle="modal" data-target="#myModal">
<form name="form1" id="form1" runat="server" >
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title" >Exam rules</h4>
        </div>
        <div class="modal-body">
         <ul>
                    <h4>
                        <li>Candidates may not provide assistance to or receive assistance from anyone during the exam.</li>
                    </h4>
                    <h4>
                        <li>They may not communicate in any manner with any person other than the examiner, presiding examiner or assistants.</li>
                    </h4>
                    <h4>
                        <li>They may not copy any material or be in possession of unauthorized aids.</li>
                    </h4>
                    <h4>
                        <li>Failure to comply will be dealt with in accordance to the Code of Behaviour on Academic Matters.</li>
                    </h4>
                    <h4>
                        <li>Eating and drinking are not permitted in examination rooms.</li>
                    </h4>
                    <h4>
                        <li>If it is necessary for a candidate to leave the room, he or she may do so and return if accompanied by the presiding examiner or an assistant.</li>
                    </h4>
                    <h4>
                        <li>A candidate must not write on any paper with the exception of the exam book and must keep all papers on his or her desk.</li>
                    </h4>
                        <h4>
                            <li>Candidates are not permitted to have any communication devices (e.g. cellphones) on their desks under any circumstances.</li>
                        </h4>
                             </ul>      </div>
        <div class="modal-footer">

            <asp:Button ID="Button1" class="btn btn-default" runat="server" Text="Start Exam"  PostBackUrl="~/bca_user/exam.aspx"/>
        </div>
      </div>
      
    </div>
  </div>
  
</form>
</body>
</html>

