<%@ Page Title="" Language="C#" MasterPageFile="~/withoutlg.Master" AutoEventWireup="true" CodeBehind="em.aspx.cs" Inherits="citygas.withoutlogin.em" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form45" runat="server">

           <table style="border: 6px solid #A8A8A8; margin-top:5%; margin-right: 3%; width:100%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
        <tr>
                <td colspan="4" class="plan-action" style="border: medium solid #FFFF99; height: 75px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="SET PASSWORD">Enter Register e-mail</td>
            </tr>
            <tr>
                <td class="auto-style15" style="height: 70px; width: 343px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">USERNAME:-</td>
                <td class="auto-style16" style="height: 70px; width: 306px;" colspan="2">
                    <asp:TextBox ID="username" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 343px; height: 70px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">EMAIL:-</td>
                <td class="auto-style20" style="height: 70px; width: 306px;" colspan="2">
                    <asp:TextBox ID="email" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 70px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="email" ErrorMessage="Please enter register Email." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
            </tr>
       
        
            <tr>
                <td class="plan-action" style="height: 31px;" colspan="4">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="White" ControlToValidate="email" ErrorMessage="Please Enter Correct Email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="lbl" runat="server"  BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px" ForeColor="#CC0000" Font-Bold="True"></asp:Label>
                    <br />
                </td>
            </tr>
    
            <tr>
                <td  colspan="4" class="auto-style1" style="height: 78px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="2">
                    <asp:Button ID="sub" runat="server" Text="CONFIRM"  OnClick="sub_Click"  BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="287px"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    </td>
                
            </tr>
    </table>

           </form>
</asp:Content>
