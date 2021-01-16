<%@ Page Title="" Language="C#" MasterPageFile="~/withlgnst.Master" AutoEventWireup="true" CodeBehind="bill.aspx.cs" Inherits="citygas.withlogin.bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form64" runat="server">

    <table style="border: medium double #A8A8A8; margin-top:5%; margin-right: 3%; width:100%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit; text-align: left;" spellcheck="False">
        <tr>
                <td colspan="2" class="plan-action" style="border: medium solid #FFFF99; height: 48px; font-family: 'Perpetua Titling MT'; font-size: 30px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; text-align: center;" title="GAS BOOKING">CITY GAS AGENCY</td>
            </tr>
        <tr>
                <td colspan="2" class="plan-action" style="border: medium solid #FFFF99; height: 143px; font-family: 'Perpetua Titling MT'; font-size: 15px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; text-align: left;" title="GAS BOOKING">Address :-
                                    <p>64/C-10,Amey chs,<br />Gorai-1,Borivali-west.</p>
                                    <p>Phone:022-28685398<br>
                                        E-mail:- citygasagency@gmail.com</p>
                                </td>
            </tr>
        <tr>
                <td colspan="2" class="plan-action" style="border: medium solid #FFFF99; height: 54px; font-family: 'Perpetua Titling MT'; font-size: 28px; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #FFFFA6; text-align: center;" title="GAS BOOKING">Bill DETAILS</td>
            </tr>
          <tr>
                <td class="auto-style15" style="border-left: medium double #CCFFFF; border-right: medium double #CCFFFF; border-top: medium none #CCFFFF; border-bottom: medium double #CCFFFF; height: 40px; width: 481px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center; width:50%; border-style: none; border-color: #FFFF99;">DATE :-</td>
                <td style="border-left: medium double #CCFFFF; border-right: medium double #CCFFFF; border-top: medium none #CCFFFF; border-bottom: medium double #CCFFFF; font-size: 20px; border: thin none #FFFF99;" class="plan-action">
                       <asp:Label ID="date" runat="server"  ForeColor="#FF3E3E"  Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True"></asp:Label>&nbsp;</td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 41px; width: 481px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;">ORDER ID:-</td>
                <td class="auto-style16" style="height: 41px">
                    <asp:Label ID="order" runat="server" ForeColor="#FF3E3E"  Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True"></asp:Label>
                </td>
            </tr>
          <tr>
                <td class="auto-style15" style="height: 40px; width: 481px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;">CUSTOMER ID:-</td>
                <td class="plan-action">
                    <asp:Label ID="custid" runat="server" ForeColor="#FF3E3E"  Font-Names="Plantagenet Cherokee" Font-Size="23px" Font-Bold="True" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 481px; height: 40px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;">CONNECTION ID:-</td>
                <td class="plan-action">
                    <asp:Label ID="connectionid" runat="server" ForeColor="#FF3E3E"  Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 481px; height: 40px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;">LPG ID:-</td>
                <td class="plan-action">
                    <asp:Label ID="lpgid" runat="server" ForeColor="#FF3E3E"  Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" style="width: 481px; height: 40px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;">nAME:-</td>
                <td class="plan-action">
                    <asp:Label ID="fname" runat="server" ForeColor="#FF3E3E" Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True"></asp:Label>
                </td>
            </tr>
        
            <tr>
                <td class="auto-style19" style="width: 481px; height: 40px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;">ADDRESS :-</td>
                <td class="plan-action">
                    <asp:Label ID="address" runat="server" ForeColor="#FF3E3E" Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True" ></asp:Label>
                </td>
            </tr>
           
          <tr>
                <td class="auto-style15" style="height: 42px; width: 481px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;">MOBILE NO.:-</td>
                <td class="plan-action" style="height: 42px">
                    <asp:Label ID="mno" runat="server" ForeColor="#FF3E3E"  Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True" ></asp:Label>
                </td>
            </tr>
           
            <tr>
                <td class="auto-style19" style="width: 481px; height: 39px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;">CATEGORY:-</td>
                <td class="plan-action" style="height: 39px">
                    <asp:Label ID="category" runat="server" ForeColor="#FF3E3E"  Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True" ></asp:Label>
                </td>
            </tr>
       
            <tr>
                <td class="auto-style19" style="border-width: thin; border-color: #FFFF99; width: 481px; height: 43px; font-family: 'Plantagenet Cherokee'; font-size: 20px; font-weight: bolder; font-style: normal; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center; border-bottom-style: solid;">TOTAL aMOUNT:-</td>
                <td class="plan-action" style="border-width: thin; border-color: #FFFF99; height: 43px; border-bottom-style: solid;">
                    <asp:Label ID="amt" runat="server" ForeColor="#FF3E3E" Font-Names="Plantagenet Cherokee" Font-Size="20px" Font-Bold="True" ></asp:Label>
                </td>
            </tr>
       
               <tr>
                <td class="auto-style19" style="height: 114px; font-family: Arial; font-size: 20px; font-weight: bolder; font-style: italic; font-variant: normal; text-transform: capitalize; color: #99FFCC; text-align: center;" colspan="2">
                    
                    <asp:Label ID="lbl" runat="server" BackColor="White" ForeColor="#CC0000" Font-Bold="True"  Font-Size="20px" Font-Names="Perpetua Titling MT" Font-Italic="False"></asp:Label>
                    <br /> <br />
                    <asp:Button ID="Button1" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="287px"  Text="OK" OnClick="Button1_Click" />
                    
                   
                </td>
            </tr>
          </table>
    </form>
</asp:Content>
