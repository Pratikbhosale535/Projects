<%@ Page Title="" Language="C#" MasterPageFile="~/adminms.Master" AutoEventWireup="true" CodeBehind="adcustomerdetails.aspx.cs" Inherits="citygas.Admin.adcustomerdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="form11" runat="server">
        <br />
    <%--<br />--%>
                
  <div style="font-family: 'Plantagenet Cherokee'" >
                <h2 style="color: #000000; font-family: 'Perpetua Titling MT';">CUSTOMER DETAILS</h2>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" Width="100%" AutoGenerateColumns="False" ForeColor="#333333" ShowHeaderWhenEmpty="True">
       
        <AlternatingRowStyle Wrap="True" BackColor="White" />
     
       <Columns>
            <asp:BoundField DataField="custid" HeaderText="CUSTOMER ID" SortExpression="custid" ReadOnly="True" />
            <asp:BoundField DataField="fname" HeaderText="FIRST NAME" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="LAST NAME" SortExpression="lname" />
            <asp:BoundField DataField="username" HeaderText="USERNAME" SortExpression="username" />
            <asp:BoundField DataField="email" HeaderText="E-MAIL" SortExpression="email" />
            <asp:BoundField DataField="mn" HeaderText="MOBILE NO." SortExpression="mn" />
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BorderColor="Black" BackColor="#FFCC66" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" BorderColor="Black" BorderWidth="5px" Wrap="True" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gasConnectionString %>" SelectCommand="SELECT [custid], [fname], [lname], [username], [email], [mn] FROM [register1]"></asp:SqlDataSource>
    </form>
</asp:Content>
