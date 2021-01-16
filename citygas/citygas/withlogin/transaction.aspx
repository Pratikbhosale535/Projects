<%@ Page Title="" Language="C#" MasterPageFile="~/withlgnst.Master" AutoEventWireup="true" CodeBehind="transaction.aspx.cs" Inherits="citygas.withlogin.transaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form78" runat="server">
         <table style="border:  6px solid #A8A8A8;; margin-top:5%; margin-right: 3%; width:98%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
        <tr>
                <td colspan="4" class="plan-action" style="border: medium solid #FFFF99; height: 76px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="GAS BOOKING">TRANSACTION</td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 62px; width: 261px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CUSTOMER ID:-</td>
                <td class="auto-style16" style="height: 62px; width: 305px;">
                    <asp:TextBox ID="custid" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 62px">
                    </td>
                <td class="auto-style18" style="height: 62px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 60px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">TOTAL AMOUNT:-</td>
                <td class="auto-style20" style="height: 60px; width: 305px;">
                    <asp:TextBox ID="amt" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 60px">
                    </td>
                <td class="auto-style22" style="height: 60px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 60px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CARD TYPE :-</td>
                <td class="auto-style20" style="height: 60px; width: 305px;">
                    <asp:DropDownList ID="ddl" runat="server" Height="40px" Width="284px">
                                             <asp:ListItem>DEBIT CARD</asp:ListItem>
                        <asp:ListItem>CREDIT CARD</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style21" style="height: 60px">
                    </td>
                <td class="auto-style22" style="height: 60px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 60px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">&nbsp;NAME ON CARD:-</td>
                <td class="auto-style20" style="height: 60px; width: 305px;">
                    <asp:TextBox ID="name" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 60px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="name" ErrorMessage="Please Enter Name On Card" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style22" style="height: 60px">
                    </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 60px; width: 261px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CARD NUMBER:-</td>
                <td class="auto-style16" style="height: 60px; width: 305px;">
                    <asp:TextBox ID="cardno" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" MaxLength="16" ValidationGroup="/d{10}"></asp:TextBox>
                </td>
                <td class="auto-style17" style="height: 60px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="cardno" ErrorMessage="Please Enter Card No." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style18" style="height: 60px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" BackColor="White" ControlToValidate="cardno" ErrorMessage="Please Enter Correct Card No." ForeColor="Red" ValidationExpression="\d{16}" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 261px; height: 60px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CVV NUMBER :-</td>
                <td class="auto-style20" style="height: 60px; width: 305px;">
                    <asp:TextBox ID="cvv" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" MaxLength="3" ValidationGroup="/d{10}" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 60px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="cvv" ErrorMessage="Please Enter CVV No." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style22" style="height: 60px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" BackColor="White" ControlToValidate="cvv" ErrorMessage="Please Enter Correct CVV No." ForeColor="Red" ValidationExpression="\d{3}" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RegularExpressionValidator>
                    </td>
            </tr>
          <tr>
                <td class="auto-style19" style="width: 261px; height: 60px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">EXPIRATION DATE:-</td>
                <td class="auto-style20" style="height: 60px; width: 305px;">
                     <asp:DropDownList ID="ddl3" runat="server" Width="142px" Height="40px">
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                        <asp:ListItem>2023</asp:ListItem>
                        <asp:ListItem>2024</asp:ListItem>
                        <asp:ListItem>2025</asp:ListItem>
                        <asp:ListItem>2026</asp:ListItem>
                        <asp:ListItem>2027</asp:ListItem>
                        <asp:ListItem>2028</asp:ListItem>
                        
                    </asp:DropDownList> <asp:DropDownList ID="ddl2" runat="server" Width="142px" Height="40px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                 
                    </asp:DropDownList>&nbsp;</td>
                <td class="auto-style21" style="height: 60px">
                    </td>
                <td class="auto-style22" style="height: 60px">
                    </td>
            </tr>
           
                <tr>
                <td class="auto-style19" style="height: 46px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="4">
                    <asp:Label ID="lbl" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Perpetua Titling MT" Font-Italic="False"></asp:Label>
                </td>
            </tr>
           
                <tr>
                <td class="auto-style19" style="height: 101px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="4">
                    <asp:Button ID="btn" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="59px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="300px"  Text="SUBMIT" OnClick="btn_Click"/>
                    <br />
                </td>
            </tr>
          </table>
    </form>
       
</asp:Content>
