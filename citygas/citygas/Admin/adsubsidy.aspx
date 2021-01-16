<%@ Page Title="" Language="C#" MasterPageFile="~/adminms.Master" AutoEventWireup="true" CodeBehind="adsubsidy.aspx.cs" Inherits="citygas.Admin.adsubsidy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form16" runat="server">
    <br />
    <br />
<div style="font-family: 'Plantagenet Cherokee'" >
                <h2 style="color: #000000; font-family: 'Perpetua Titling MT';">SUBSIDY DETAILS</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="custid" HeaderText="CUSTOMER ID" SortExpression="custid" />
            <asp:BoundField DataField="connectionid" HeaderText="CONNECTION ID" SortExpression="connectionid" />
            <asp:BoundField DataField="lpgid" HeaderText="LPG ID" SortExpression="lpgid" />
            <asp:BoundField DataField="fname" HeaderText="FIRST NAME" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="LAST NAME" SortExpression="lname" />
            <asp:BoundField DataField="address" HeaderText="ADDRESS" SortExpression="address" />
            <asp:BoundField DataField="mno" HeaderText="MOBILE NO." SortExpression="mno" />
            <asp:BoundField DataField="email" HeaderText="EMAIL" SortExpression="email" />
            <asp:BoundField DataField="category" HeaderText="CATEGORY" SortExpression="category" />
            <asp:BoundField DataField="DateTime" HeaderText="DATE" SortExpression="DateTime" />
            <asp:BoundField DataField="subsidy" HeaderText="REMAINING SUBSIDY" SortExpression="subsidy" />
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="#FFCC66" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gasConnectionString %>" SelectCommand="SELECT [custid], [connectionid], [lpgid], [fname], [lname], [address], [mno], [email], [category], [DateTime], [subsidy] FROM [gasbook1] WHERE ([status] = @status) ORDER BY [DateTime]">
        <SelectParameters>
            <asp:FormParameter DefaultValue="Booked" FormField="status" Name="status" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>
