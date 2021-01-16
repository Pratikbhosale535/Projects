<%@ Page Title="" Language="C#" MasterPageFile="~/withlgnst.Master" AutoEventWireup="true" CodeBehind="cancelbooking.aspx.cs" Inherits="citygas.withlogin.cancelbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form75" runat="server">

    <table style="border:  6px solid #A8A8A8; margin-top:5%; margin-right: 3%; width:98%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
        <tr>
                <td colspan="2" class="plan-action" style="border: medium solid #FFFF99; height: 76px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="GAS BOOKING">Cancel booking</td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 60px; width: 457px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CUSTOMER ID:-</td>
                <td class="auto-style16" style="height: 60px">
                    <asp:TextBox ID="custid" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 60px; width: 457px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">BOOKING ID:-</td>
                <td class="auto-style16" style="height: 60px">
                    <asp:TextBox ID="order" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 77px; width: 457px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CATEGORY:-</td>
                <td class="auto-style16" style="height: 77px">
                    <asp:RadioButtonList ID="rbl" Align="center" runat="server" BackColor="White" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="3px" Width="285px" CausesValidation="True" Height="45px" Enabled="False" >
                        <asp:ListItem>DOMESTIC(14 KG)</asp:ListItem>
                        <asp:ListItem>COMMERCIAL(19 KG)</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 61px; width: 457px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">E-MAIL:-</td>
                <td class="auto-style16" style="height: 61px">
                    <asp:TextBox ID="email" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 61px; width: 457px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">STATUS:-</td>
                <td class="auto-style16" style="height: 61px">
                    <asp:TextBox ID="status" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 61px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="2">
                    <asp:Label ID="lbl" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Perpetua Titling MT" Font-Italic="False"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="R7" runat="server" ControlToValidate="status" ErrorMessage="Please First Book you gas." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="False" Font-Italic="False"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lbl2" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Perpetua Titling MT" Font-Italic="False"></asp:Label>
                    <br />
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 98px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="2">
                    <asp:Button ID="btnn" runat="server" OnClick="btnn_Click" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="287px" Text="CANCEL BOOKING"  /> &nbsp;</td>
            </tr>
        </table>
          </form>
</asp:Content>
