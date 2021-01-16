<%@ Page Title="" Language="C#" MasterPageFile="~/adminms.Master" AutoEventWireup="true" CodeBehind="adnewconnection.aspx.cs" Inherits="citygas.Admin.adnewconnection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form15" runat="server">
    <br />
    <br />
        <div style="font-family: 'Plantagenet Cherokee'" >
                <h2 style="color: #000000; font-family: 'Perpetua Titling MT';">NEW CONNECTION DETAILS</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="custid" HeaderText="CUSTOMER ID" SortExpression="custid" />
            <asp:BoundField DataField="connectionid" HeaderText="CONNECTION ID" SortExpression="connectionid" />
            <asp:BoundField DataField="fname" HeaderText="FIRST NAME" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="LAST NAME" SortExpression="lname" />
            <asp:BoundField DataField="address" HeaderText="ADDRESS" SortExpression="address" />
            <asp:BoundField DataField="aadhaar" HeaderText="AADHAAR NO." SortExpression="aadhaar" />
            <asp:BoundField DataField="mno" HeaderText="MOBILE NO." SortExpression="mno" />
            <asp:BoundField DataField="email" HeaderText="E-MAIL" SortExpression="email" />
            <asp:BoundField DataField="category" HeaderText="CATEGORY" SortExpression="category" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gasConnectionString %>" SelectCommand="SELECT * FROM [nconnection1]"></asp:SqlDataSource>
    </form>
</asp:Content>
