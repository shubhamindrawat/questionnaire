<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="bca_user_exam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="jquery-3.1.1.js"></script>
    <script>
        $(document).ready(function () {
            $(document).keydown(function (e) {
                if (e.ctrlKey) {
                    e.preventDefault();
                }
                else {
                    e.preventDefault();
                }
            });
        });
    </script>
   
    <style type="text/css">
        #online-primary-container {
            margin-top: 25px;
            width: 100%;
            border: 1px solid black;
            text-align: center;
        }
        .border-square {
  border-radius: 10px;
  height:276px;
  width:190px;
  padding-bottom:90px;
}

        #online-exam-body-div {
            width: 100%;
            margin: auto;
            margin-top: 20px;
            padding-top: 20px;
        }

        .online-exam-div {
            width: 70%;
            border: 1px solid black;
            height: 500px;
            float: left;
        }

        .silverligth-app-div {
            width: 28%;
            height: 383px;
            margin-top: 15px;
            border: 1px solid black;
            float: right;
            text-align: center;
        }

        .silverligth-timer-div {
            width: 28%;
            height: 100px;
            border: 1px solid black;
            float: right;
        }

        #online-exam-footer-div {
            width: 100%;
            margin-top: 10px;
            min-width: 1000px;
        }

        .btn, .st-btn {
            letter-spacing: 1px;
        }

        .btn, .footer ul li a, .st-btn {
            text-transform: uppercase;
        }

            .footer .icon, .st-btn, .st-btn .icon {
                display: inline-block;
            }

        .st-btn {
            padding: 10px 30px;
            border: 1px solid #d9d9d9;
            background: 0 0;
            transition: all .4s ease-in-out;
        }

            .st-btn.hvr-back.full-rounded:before, .st-btn.hvr-border.full-rounded:before {
                border-radius: 100px;
            }

            .st-btn.btn-small {
                padding: 5px 15px;
                font-size: 12px;
            }

            .st-btn.st-btn-thick {
                border-width: 4px;
            }

            .st-btn.st-btn-3d {
                border-bottom-width: 3px;
            }

            .st-btn .icon {
                font-size: 16px;
                padding-right: 5px;
            }

            .st-btn.icon-right .icon {
                padding-left: 5px;
            }

            .st-btn.hvr-back:before {
                background: #47b475;
            }

            .st-btn.hvr-back:active, .st-btn.hvr-back:focus, .st-btn.hvr-back:hover {
                color: #fff !important;
            }

            .st-btn.hvr-border:before {
                border-color: #47b475;
                background-color: #47b475;
            }

            .st-btn.primary-btn {
                background-color: #47b475;
                color: #fff;
                border-color: #40a269;
            }

                .st-btn.primary-btn:active, .st-btn.primary-btn:focus, .st-btn.primary-btn:hover {
                    background: 0 0;
                    color: #47b475;
                }

                .st-btn.primary-btn.hvr-back:before {
                    background: #fff;
                }

                .st-btn.primary-btn.hvr-back:active, .st-btn.primary-btn.hvr-back:focus, .st-btn.primary-btn.hvr-back:hover {
                    color: #47b475 !important;
                }

            .st-btn.dark-btn {
                background-color: #2b2c2d;
                color: #fff;
                border-color: #2b2c2d;
            }

                .st-btn.dark-btn:active, .st-btn.dark-btn:focus, .st-btn.dark-btn:hover {
                    background: 0 0;
                    border-color: #2b2c2d;
                    color: #2b2c2d !important;
                }

                .st-btn.dark-btn.hvr-back:before {
                    background: #fff;
                    border-color: #2b2c2d;
                }

                .st-btn.dark-btn.hvr-back:active, .st-btn.dark-btn.hvr-back:focus, .st-btn.dark-btn.hvr-back:hover {
                    color: #2b2c2d !important;
                }

                .st-btn.dark-btn.hvr-border:before {
                    border-color: #2b2c2d;
                    background-color: #2b2c2d;
                }

            .st-btn:active, .st-btn:focus, .st-btn:hover {
                border-color: #47b475;
            }

            .st-btn.rounded {
                border-radius: 8px;
            }

            .st-btn.full-rounded {
                border-radius: 100px;
            }

        .modal-footer .st-btn {
            vertical-align: baseline;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div id="online-primary-container">
            <h1>Welcome to online Examination</h1>
        </div>
        <div id="online-exam-body-div">
            <div class="online-exam-div">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        &nbsp;&nbsp;<asp:Label runat="server" ID="lbl_ques_no" Text="Q1." Font-Size="X-Large" Style="font-family: 'Times New Roman'"></asp:Label>
                        &nbsp;<asp:Label ID="lbl_ques" runat="server" Text="How are you?" Font-Size="X-Large" Style="font-family: 'Times New Roman'"></asp:Label>
                        <br />
                        <asp:Image ID="img_graphics" runat="server" Visible="False" />
                       <h3> <asp:RadioButtonList runat="server" ID="rbl_options" AutoPostBack="True" OnSelectedIndexChanged="rbl_options_SelectedIndexChanged" Style="display: table-row" CellSpacing="25" CellPadding="0" RepeatDirection="Horizontal">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                        </asp:RadioButtonList></h3>
                        <br />
                        &nbsp;&nbsp;<asp:Button ID="btn_first" runat="server" OnClick="btn_first_Click" Text="&lt;&lt;" CssClass="st-btn primary-btn hvr-back hvr-sweep hvr-sweep-to-right full-rounded" style="display: table-row" />
                        &nbsp;<asp:Button ID="btn_prev" runat="server" OnClick="btn_prev_Click" Text="&lt;" CssClass="st-btn primary-btn hvr-back hvr-sweep hvr-sweep-to-right full-rounded" style="display: table-row" />
                        &nbsp;<asp:Button ID="btn_next" runat="server" OnClick="btn_next_Click" Text="&gt;" CssClass="st-btn primary-btn hvr-back hvr-sweep hvr-sweep-to-right full-rounded" style="display: table-row" />
                        &nbsp;<asp:Button ID="btn_last" runat="server" OnClick="btn_last_Click" Text="&gt;&gt;" CssClass="st-btn primary-btn hvr-back hvr-sweep hvr-sweep-to-right full-rounded" style="display: table-row" />
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
                &nbsp;&nbsp;<asp:Button ID="btn_end_test" runat="server" OnClick="btn_end_test_Click" Text="End Test" CssClass="st-btn primary-btn hvr-back hvr-sweep hvr-sweep-to-right" style="display:table-row"/>
            </div>
            <div class="silverligth-timer-div">
                <asp:Panel ID="panel1" runat="server">
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick" EnableViewState="true"></asp:Timer>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="lbl_timer" runat="server"  Font-Size="XX-Large" Style="font-family: 'Times New Roman';font-size:70px"></asp:Label>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" />
                        </Triggers>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>
            <div class="silverligth-app-div">
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" CssClass="border-square"  ImageAlign="Middle"/>
                
            </div>

        </div>
        <script src="scripts/vendor.js"></script>
        <script src="scripts/plugins.js"></script>
        <script src="scripts/main.js"></script>
        <script type="text/javascript">
            $(function ($) {
                $('#js-grid-faq').cubeportfolio({
                    filters: '#js-filters-faq',
                    defaultFilter: '*',
                    animationType: 'sequentially',
                    gridAdjustment: 'default',
                    displayType: 'default',
                    caption: 'expand',
                    gapHorizontal: 0,
                    gapVertical: 0
                });
            });
        </script>
    </form>
</body>
</html>
