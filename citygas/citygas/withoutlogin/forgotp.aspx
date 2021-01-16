<%@ Page Title="" Language="C#" MasterPageFile="~/withoutlg.Master" AutoEventWireup="true" CodeBehind="forgotp.aspx.cs" Inherits="citygas.withoutlogin.forgotp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form44" runat="server">
     <table style="border: 6px solid #A8A8A8; margin-top:5%; margin-right: 3%; width:100%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
        <tr>
                <td colspan="3" class="plan-action" style="border: medium solid #FFFF99; height: 75px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="fORGOT PASSWORD">fORGOT PASSWORD</td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 70px; width: 470px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">USERNAME:-</td>
                <td class="auto-style16" style="height: 70px; width: 203px;">
                    <asp:TextBox ID="username" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="username" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 70px; width: 470px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">SELECT SECURITY QUESTION:-</td>
                <td class="auto-style16" style="height: 70px; width: 203px;">
                    <asp:DropDownList ID="ddl" runat="server" Height="40px" Width="285px">
                        <asp:ListItem>What is your best friend name?</asp:ListItem>
                        <asp:ListItem>What is favourite food?</asp:ListItem>
                        <asp:ListItem>What is your favourite game?</asp:ListItem>
                        <asp:ListItem>What is your nickname?</asp:ListItem>
                        <asp:ListItem>Who is your favourite actor?</asp:ListItem>
                        <asp:ListItem>What is your favourite holiday spot?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style17" style="height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl" ErrorMessage="Please Select Security Question" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 72px; width: 470px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">YOUR ANS:-</td>
                <td class="auto-style16" style="height: 72px; width: 203px;">
                    <asp:TextBox ID="ans" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 72px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ans" ErrorMessage="Please Enter Answer" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
              
         <tr>
                <td class="plan-action" style="font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="3">
                    <asp:Label ID="lbl" runat="server" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px" ForeColor="#CC0000" Font-Bold="True" Font-Italic="False"></asp:Label>
                </td>
            </tr>
              
         <tr>
                <td class="auto-style15" style="height: 112px; width: 470px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;">
                    <asp:Button ID="sub" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="50px" Text="PROCESSED" Width="288px" OnClick="sub_Click" BorderStyle="Outset" Font-Bold="True" Font-Size="25px" />
                </td>
                <td class="auto-style16" style="height: 112px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="2">
                    <asp:Button ID="emails" runat="server"  BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="55px"  BorderStyle="Outset" Font-Bold="True" Font-Size="20px" Width="387px"  CausesValidation="False" OnClick="email_Click1" Text="SEND USERNAME QUESTION &amp; ANS" />
                </td>
            </tr>
          
          
         </table>
     </form>
</asp:Content>
