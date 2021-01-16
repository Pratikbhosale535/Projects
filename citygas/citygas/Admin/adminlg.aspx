<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlg.aspx.cs" Inherits="citygas.Admin.adminlg" %>

<!DOCTYPE html>

<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style8 {
            height: 73px;
            width: 295px;
        }
        .auto-style24 {
            height: 21px;
            width: 20%;
        }
        .auto-style26 {
            height: 21px;
            width: 30%;
        }
        .auto-style27 {
            height: 20px;
            width: 20%;
        }
        .auto-style29 {
            height: 20px;
            width: 30%;
        }
        .auto-style32 {
            height: 96px;
            width: 239px;
        }
        .auto-style33 {
            height: 85px;
            width: 35%;
        }
    </style>
    <link href="css/abcd.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="width:70%;  margin-left: auto;
  margin-right: auto; ">
            <tr>
                <td class="auto-style8" colspan="4" style="text-align: center">ADMIN LOGIN PAGE</td>
            </tr>
            <tr>
                <td class="auto-style24" style="height: 85px;"> USERNAME:-</td>
                <td class="auto-style33">
                    <asp:TextBox ID="username" runat="server" BackColor="#99CCFF" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="5px" Height="44px" Width="240px" ForeColor="Black" style="margin-right: 2px"></asp:TextBox>
                </td>
                <td class="auto-style26" style="height: 85px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="Please Enter Username"  SetFocusOnError="True" ForeColor="Red" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style27" style="height: 85px;" >PASSWORD:-</td>
                <td class="auto-style33">
                    <asp:TextBox ID="password" runat="server" BackColor="#99CCFF" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="5px" ForeColor="Black" Height="43px" style="margin-bottom: 4px" Width="240px" TextMode="Password" ></asp:TextBox>
                </td>
                <td class="auto-style29" style="height: 85px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style32" style="width:35%; height: 85px;" >
                    <asp:Button ID="btn1" runat="server" BackColor="#00CCFF" BorderColor="#3399FF" BorderStyle="Double" BorderWidth="6px" Height="77px" Text="LOGIN" Width="253px" OnClick="btn1_Click" />
                </td>
                <td class="auto-style33">
                    <asp:Label ID="lbl" runat="server" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px" ForeColor="#CC0000" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            
        </table>
    
    </div>
    </form>
</body>
</html>
