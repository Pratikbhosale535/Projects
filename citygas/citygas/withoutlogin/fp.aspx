<%@ Page Title="" Language="C#" MasterPageFile="~/withoutlg.Master" AutoEventWireup="true" CodeBehind="fp.aspx.cs" Inherits="citygas.withoutlogin.fp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form43" runat="server">
   <table style="border: 6px solid #A8A8A8; margin-top:5%; margin-right: 3%; width:100%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
        <tr>
                <td colspan="4" class="plan-action" style="border: medium solid #FFFF99; height: 75px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="SET PASSWORD">SET PASSWORD</td>
            </tr>
            <tr>
                <td class="auto-style15" style="height: 70px; width: 343px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">USERNAME:-</td>
                <td class="auto-style16" style="height: 70px; width: 306px;" colspan="2">
                    <asp:TextBox ID="username" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 343px; height: 70px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">PASSWORD:-</td>
                <td class="auto-style20" style="height: 70px; width: 306px;" colspan="2">
                    <asp:TextBox ID="password" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
         <tr>
                <td class="auto-style19" style="width: 343px; height: 70px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CONFIRM PASSWORD:-</td>
                <td class="auto-style20" style="height: 70px; width: 306px;" colspan="2">
                    <asp:TextBox ID="cpassword" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpassword" ControlToValidate="password" ErrorMessage="Please enter same password." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:CompareValidator>
                    </td>
            </tr>
        
            <tr>
                <td class="plan-action" style="height: 31px;" colspan="4">
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" BackColor="White" ControlToValidate="password" ErrorMessage="Password length must be between 7 to 16 characters and contain at least one upper case letter, one lower case letter, and one numeric digit." ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,16}$"  Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="lbl" runat="server"  BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px" ForeColor="#CC0000" Font-Bold="True"></asp:Label>
                </td>
            </tr>
    
            <tr>
                <td  colspan="4" class="auto-style1" style="height: 78px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="2">
                    <asp:Button ID="sub" runat="server" Text="CONFIRM"  OnClick="sub_Click"  BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="287px"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="sub0" runat="server" Text="LOGIN HERE" OnClick="sub0_Click" CausesValidation="False"  BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="287px" />
                </td>
                
            </tr>
    </table>
    </form>
</asp:Content>
