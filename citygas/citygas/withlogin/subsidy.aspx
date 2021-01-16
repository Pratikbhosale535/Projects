<%@ Page Title="" Language="C#" MasterPageFile="~/withlgnst.Master" AutoEventWireup="true" CodeBehind="subsidy.aspx.cs" Inherits="citygas.withlogin.subsidy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form79" runat="server">

    <table style="border:  6px solid #A8A8A8;; margin-top:5%; margin-right: 3%; width:98%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
        <tr>
                <td colspan="2" class="plan-action" style="border: medium solid #FFFF99; height: 75px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="GAS BOOKING">subsidy details</td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 61px; width: 457px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CUSTOMER ID:-</td>
                <td class="auto-style16" style="height: 61px">
                    <asp:TextBox ID="custid" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 62px; width: 457px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">E-MAIL:-</td>
                <td class="auto-style16" style="height: 62px">
                    <asp:TextBox ID="email" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False" ></asp:TextBox>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 67px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="2">
                    <asp:Label ID="lbl" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Perpetua Titling MT" Font-Italic="False"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="R7" runat="server" ControlToValidate="email" ErrorMessage="Please First Book you gas." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="False" Font-Italic="False"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lbl2" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Perpetua Titling MT" Font-Italic="False"></asp:Label>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 94px; width: 457px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;">
                    <asp:Button ID="btn1" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="58px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="302px"  Text="SUBSIDY DETAILS" OnClick="btn1_Click"  />
                    <br />
                </td>
                <td class="auto-style16" style="height: 94px">
                    <asp:Button ID="btn2" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="348px"  Text="SEND SUBSIDY DETAILS"  CausesValidation="False" OnClick="btn2_Click"  />
                    <br />
                    </td>
            </tr>
        </table>
          </form>
</asp:Content>
