<%@ Page Title="" Language="C#" MasterPageFile="~/withlgnst.Master" AutoEventWireup="true" CodeBehind="gasbooking.aspx.cs" Inherits="citygas.withlogin.gasbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form72" runat="server">

    <table style="border:  6px solid #A8A8A8;; margin-top:5%; margin-right: 3%; width:98%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
        <tr>
                <td colspan="4" class="plan-action" style="border: medium solid #FFFF99; height: 74px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="GAS BOOKING">GAS BOOKING</td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 66px; width: 261px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">BOOKING ID:-</td>
                <td class="auto-style16" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="order" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 66px">
                    </td>
                <td class="auto-style18" style="height: 66px">
                    </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 66px; width: 261px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CUSTOMER ID:-</td>
                <td class="auto-style16" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="custid" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 66px">
                    </td>
                <td class="auto-style18" style="height: 66px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 66px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CONNECTION ID:-</td>
                <td class="auto-style20" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="connectionid" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 66px">
                    </td>
                <td class="auto-style22" style="height: 66px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 66px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">LPG ID:-</td>
                <td class="auto-style20" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="lid" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 66px">
                    </td>
                <td class="auto-style22" style="height: 66px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 66px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">&nbsp;FIRST nAME:-</td>
                <td class="auto-style20" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="fname" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 66px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style22" style="height: 66px">
                    </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 66px; width: 261px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;" >LAST NAME:-</td>
                <td class="auto-style16" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="lname" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 66px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lname" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style18" style="height: 66px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 66px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">ADDRESS :-</td>
                <td class="auto-style20" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="address" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 66px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="address" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style22" style="height: 66px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 66px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CONFIRM ADDRESS:-</td>
                <td class="auto-style20" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="caddress" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 66px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="caddress" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style22" style="height: 66px">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="White" ControlToCompare="caddress" ControlToValidate="address" ErrorMessage="Please Enter Same Address" ForeColor="Red" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:CompareValidator>
                    </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 66px; width: 261px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">MOBILE NO.:-</td>
                <td class="auto-style16" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="mno" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" MaxLength="10" ValidationGroup="/d{10}" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 66px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="mno" ErrorMessage="Please Enter Mobile No." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style18" style="height: 66px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 66px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">E-MAIL:-</td>
                <td class="auto-style20" style="height: 66px; width: 110px;">
                    <asp:TextBox ID="email" runat="server" Height="42px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 66px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="email" ErrorMessage="Please Enter Correct E-mail" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style22" style="height: 66px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 81px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CATEGORY:-</td>
                <td class="auto-style20" style="height: 81px; width: 110px;">
                    <asp:RadioButtonList ID="rbl" Align="center" runat="server" BackColor="White" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="3px" Width="285px" CausesValidation="True" Height="45px" Enabled="False" >
                        <asp:ListItem>DOMESTIC(14 KG)</asp:ListItem>
                        <asp:ListItem>COMMERCIAL(19 KG)</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style21" style="height: 81px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="rbl" ErrorMessage="Please Select Category" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style22" style="height: 81px">
                    </td>
            </tr>
          <tr>
                <td class="auto-style19" style="width: 261px; height: 72px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">PAYMENT MODE:-</td>
                <td class="auto-style20" style="height: 72px; width: 110px;">
                    <asp:RadioButtonList ID="rbl2" Align="center" runat="server" BackColor="White" BorderColor="#3399FF" BorderStyle="Solid" BorderWidth="3px" Width="285px" CausesValidation="True" Height="45px" >
                        <asp:ListItem>COD</asp:ListItem>
                        <asp:ListItem>ONLINE PAYMENT</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style21" style="height: 72px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rbl2" ErrorMessage="Please Select Payment Mode" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style22" style="height: 72px">
                    </td>
            </tr>

                <tr>
                <td class="auto-style19" style="height: 46px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="4">
                    <asp:Label ID="lbl" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Perpetua Titling MT" Font-Italic="False"></asp:Label>
                    <br />
                </td>
            </tr>
          <tr>
                <td class="auto-style19" style="height: 96px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="4">
                    <asp:Button ID="btn1" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="287px"   Text="BOOK GAS"  OnClick="Button1_Click"  />
                </td>
            </tr>
              
          </table>
    </form>
</asp:Content>
