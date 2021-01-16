<%@ Page Title="" Language="C#" MasterPageFile="~/withlgnst.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="citygas.withlogin.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form77" runat="server">&nbsp;<table style="border: 6px solid #A8A8A8; margin-top:5%; margin-right: 3%; width:100%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;">
          <tr>
                <td colspan="4" class="plan-action" style="border:  6px solid #A8A8A8;; height: 75px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; " title="UPDATE PERSONAL INFO">UPDATE PERSONAL INFO</td>
            </tr>
            
            <tr>
                <td class="auto-style15" style="height: 59px; width: 352px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CUSTOMER ID:-</td>
                <td class="plan-action" style="height: 59px; width: 290px;">
                    <asp:TextBox ID="custid" runat="server" Height="40px" Width="285px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 181px; height: 59px;">
                    </td>
                <td class="plan-action" style="height: 59px">
                    </td>
            </tr>
            
            <tr>
                <td class="auto-style15" style="height: 63px; width: 352px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">fIRST nAME:-</td>
                <td class="plan-action" style="height: 63px; width: 290px;">
                    <asp:TextBox ID="fname" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 181px; height: 63px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 63px">
                    </td>
            </tr>
            
            <tr>
                <td class="auto-style15" style="height: 59px; width: 352px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">LAST NAME:-</td>
                <td class="plan-action" style="height: 59px; width: 290px;">
                    <asp:TextBox ID="lname" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="plan-action" style="height: 59px; width: 181px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 59px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style15" style="height: 60px; width: 352px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">USERNAME:-</td>
                <td class="plan-action" style="height: 60px; width: 290px;">
                    <asp:TextBox ID="username" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 181px; height: 60px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="Please enter username" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 60px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 352px; height: 59px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">PASSWORD:-</td>
                <td class="auto-style20" style="height: 59px; width: 290px;">
                    <asp:TextBox ID="password" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" TextMode="Password"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 181px; height: 59px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 59px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 352px; height: 59px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CONFIRM PASSWORD:-</td>
                <td class="auto-style20" style="height: 59px; width: 290px;">
                    <asp:TextBox ID="cpassword" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" TextMode="Password"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 181px; height: 59px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 59px">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="White" ControlToCompare="password" ControlToValidate="cpassword" ErrorMessage="Please Enter Same Password" ForeColor="Red" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:CompareValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 352px; height: 65px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">E-MAIL :-</td>
                <td class="auto-style20" style="height: 65px; width: 290px;">
                    <asp:TextBox ID="email" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False" ></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 65px; width: 181px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter Email." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 65px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 352px; height: 53px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">MOBILE nO:-</td>
                <td class="auto-style20" style="height: 53px; width: 290px;">
                    <asp:TextBox ID="mn" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" MaxLength="10"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 53px; width: 181px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="mn" ErrorMessage="Please Enter Mobile No." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 53px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" BackColor="White" ControlToValidate="mn" ErrorMessage="Please Enter Correct Mobile No." ForeColor="Red" ValidationExpression="\d{10}" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 352px; height: 70px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">SELECT SECURITY QUESTION:-</td>
                <td class="auto-style20" style="height: 70px; width: 290px;">
                    <asp:DropDownList ID="ddl" runat="server" Height="40px" Width="284px">
                                             <asp:ListItem>What is your best friend name?</asp:ListItem>
                        <asp:ListItem>What is favourite food?</asp:ListItem>
                        <asp:ListItem>What is your favourite game?</asp:ListItem>
                        <asp:ListItem>What is your nickname?</asp:ListItem>
                        <asp:ListItem>Who is your favourite actor?</asp:ListItem>
                        <asp:ListItem>What is your favourite holiday spot?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style21" style="height: 70px; width: 181px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl" ErrorMessage="Please Select Your Question." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 70px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 352px; height: 58px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">ANSWER:-</td>
                <td class="auto-style20" style="height: 58px; width: 290px;">
                    <asp:TextBox ID="ans" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" 
                        ></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 58px; width: 181px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ans" ErrorMessage="Please Enter Your Answer." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 58px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style1"  style="height: 31px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="4">
                     
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" BackColor="White" ControlToValidate="password" ErrorMessage="Password length must be between 7 to 16 characters and contain at least one upper case letter, one lower case letter, and one numeric digit." ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,16}$"  Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="False" Font-Italic="False"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                     
                    <asp:Label ID="lbl" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Perpetua Titling MT" Font-Italic="False" ></asp:Label>
                     
                </td>
            </tr>
    
            
            <tr>
                <td class="auto-style1"  style="height: 95px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC;" colspan="4">
                    <asp:Button ID="btn" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="59px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="300px"  Text="UPDATE" OnClick="btn_Click"/>
                </td>
            </tr>
    
            
    </table>
    </form>
</asp:Content>
