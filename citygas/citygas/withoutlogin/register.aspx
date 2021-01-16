<%@ Page Title="" Language="C#" MasterPageFile="~/withoutlg.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="citygas.withoutlogin.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="form42" runat="server">&nbsp;<table style="border:  6px solid #A8A8A8; margin-top:3%; margin-right: 3%; width:100%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit; text-align: center;">
          <tr>
                <td colspan="4" class="plan-action" style="border: medium solid #FFFF99; height: 79px; font-family: 'Perpetua Titling MT'; font-size: 40px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; text-align: center;" title="REGISTER HERE">REGISTER HERE</td>
            </tr>
            
            <tr>
                <td class="auto-style15" style="height: 70px; width: 302px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CUSTOMER ID:-</td>
                <td class="plan-action" style="height: 70px; width: 135px;">
                    <asp:TextBox ID="custid" runat="server" Height="40px" Width="285px" BorderWidth="3px" BorderColor="#3399FF" Enabled="False"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 371px; height: 70px;">
                    </td>
                <td class="plan-action" style="height: 70px">
                    </td>
            </tr>
            
            <tr>
                <td class="auto-style15" style="height: 70px; width: 302px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">fIRST nAME:-</td>
                <td class="plan-action" style="height: 70px; width: 135px;">
                    <asp:TextBox ID="fname" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 371px; height: 70px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter First Name" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 70px">
                    </td>
            </tr>
            
            <tr>
                <td class="auto-style15" style="height: 69px; width: 302px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">LAST NAME:-</td>
                <td class="plan-action" style="height: 69px; width: 135px;">
                    <asp:TextBox ID="lname" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="plan-action" style="height: 69px; width: 371px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter Last Name" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 69px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style15" style="height: 70px; width: 302px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">USERNAME:-</td>
                <td class="plan-action" style="height: 70px; width: 135px;">
                    <asp:TextBox ID="username" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 371px; height: 70px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="username" ErrorMessage="Please enter username" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 70px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 302px; height: 72px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">PASSWORD:-</td>
                <td class="auto-style20" style="height: 72px; width: 135px;">
                    <asp:TextBox ID="password" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" TextMode="Password"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 371px; height: 72px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="password" ErrorMessage="Please enter password" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 72px">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 302px; height: 71px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">CONFIRM PASSWORD:-</td>
                <td class="auto-style20" style="height: 71px; width: 135px;">
                    <asp:TextBox ID="cpassword" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" TextMode="Password"></asp:TextBox>
                </td>
                <td class="plan-action" style="width: 371px; height: 71px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 71px">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" BackColor="White" ControlToCompare="password" ControlToValidate="cpassword" ErrorMessage="Please Enter Same Password" ForeColor="Red" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:CompareValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 302px; height: 73px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">E-MAIL:-</td>
                <td class="auto-style20" style="height: 73px; width: 135px;">
                    <asp:TextBox ID="email" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 73px; width: 371px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="fname" ErrorMessage="Please Enter Email." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 73px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="White" ControlToValidate="email" ErrorMessage="Please Enter Correct Email." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 302px; height: 70px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">MOBILE nO:-</td>
                <td class="auto-style20" style="height: 70px; width: 135px;">
                    <asp:TextBox ID="mn" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" MaxLength="10"></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 70px; width: 371px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="mn" ErrorMessage="Please Enter Mobile No." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 70px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" BackColor="White" ControlToValidate="mn" ErrorMessage="Please Enter Correct Mobile No." ForeColor="Red" ValidationExpression="\d{10}" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 302px; height: 70px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">&nbsp;SECURITY QUESTION:-</td>
                <td class="auto-style20" style="height: 70px; width: 135px;">
                    <asp:DropDownList ID="ddl" runat="server" Height="40px" Width="284px">
                                             <asp:ListItem>What is your best friend name?</asp:ListItem>
                        <asp:ListItem>What is favourite food?</asp:ListItem>
                        <asp:ListItem>What is your favourite game?</asp:ListItem>
                        <asp:ListItem>What is your nickname?</asp:ListItem>
                        <asp:ListItem>Who is your favourite actor?</asp:ListItem>
                        <asp:ListItem>What is your favourite holiday spot?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style21" style="height: 70px; width: 371px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl" ErrorMessage="Please Select Your Question." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 70px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 302px; height: 49px; font-family: 'Plantagenet Cherokee'; font-size: 25px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC;">ANSWER:-</td>
                <td class="auto-style20" style="height: 49px; width: 135px;">
                    <asp:TextBox ID="ans" runat="server" Height="40px" Width="284px" BorderWidth="3px" BorderColor="#3399FF" 
                        ></asp:TextBox>
                </td>
                <td class="auto-style21" style="height: 49px; width: 371px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ans" ErrorMessage="Please Enter Your Answer." ForeColor="Red" SetFocusOnError="True" BackColor="White" Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RequiredFieldValidator>
                    </td>
                <td class="plan-action" style="height: 49px">
                    </td>
            </tr>
            <tr>
                <td style="height: 20px;" colspan="4">
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" BackColor="White" ControlToValidate="password" ErrorMessage="Password length must be between 7 to 16 characters and contain at least one upper case letter, one lower case letter, and one numeric digit." ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,16}$"  Font-Names="Plantagenet Cherokee" Font-Size="20px"></asp:RegularExpressionValidator>
                </td>
            </tr>
    
            
            <tr>
                <td class="plan-action" style="height: 18px;" colspan="4">
                    <asp:Label ID="lbl" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Plantagenet Cherokee"></asp:Label>
                    &nbsp&nbsp
                                        
                </td>
            </tr>
    
            
            <tr>
                <td class="auto-style1" style="height: 124px; text-align: center;" colspan="2">
                    <asp:ImageButton ID="btn1" runat="server" Height="93px" ImageUrl="~/images/buttons/rg3.png" Width="300px" OnClick="btn1_Click"  />
                </td>
                <td class="auto-style1" style="height: 124px; text-align: center;" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="103px" ImageUrl="~/images/buttons/lg1.png" Width="295px" CausesValidation="False" OnClick="ImageButton1_Click" />
                </td>
            </tr>
    
            
    </table>
    </form>

</asp:Content>
