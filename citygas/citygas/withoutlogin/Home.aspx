<%@ Page Title="" Language="C#" MasterPageFile="~/withoutlg.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="citygas.withoutlogin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form41" runat="server">
<table style="border: 6px solid #A8A8A8; margin-top:5%; margin-right: 3%; width:100%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
        <tr>
                <td colspan="3" class="plan-action" style="border: medium solid #FFFF99; height: 74px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="LOGIN HERE">LOGIN HERE</td>
            </tr>
            <tr>
                <td class="auto-style15" style="height: 69px; width: 376px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">USERNAME:-</td>
                <td class="auto-style16" style="height: 69px; width: 430px; ">
                    <asp:TextBox ID="username" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 69px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="Please Enter Username"  SetFocusOnError="True" ForeColor="Red" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 376px; height: 70px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">PASSWORD:-</td>
                <td class="auto-style20" style="height: 70px; width: 430px;">
                    <asp:TextBox ID="password" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
      &nbsp<br />
&nbsp;</td>
            </tr>
        
            <tr>
                <td class="plan-action" style="height: 32px;" colspan="3">
                    <asp:Label ID="lbl" runat="server" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px" ForeColor="#CC0000" Font-Bold="True"></asp:Label>
                </td>
            </tr>
    
            <tr>
                <td class="plan-action" style="height: 131px;">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="95px" ImageUrl="~/images/buttons/rg1.png" Width="325px" CausesValidation="False" OnClick="ImageButton2_Click" />
                </td>
                <td class="plan-action" style="height: 131px;">
                    <asp:ImageButton ID="btn1" runat="server" Height="102px" ImageUrl="~/images/buttons/lg1.png" Width="280px" OnClick="btn1_Click"  />
                </td>
                <td class="plan-action" style="height: 131px;">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="108px" ImageUrl="~/images/buttons/pass.png" Width="302px" CausesValidation="False" OnClick="ImageButton3_Click"  />
                </td>
            </tr>
    
            
    </table>
         
    </form>
</asp:Content>
