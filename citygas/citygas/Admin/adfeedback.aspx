<%@ Page Title="" Language="C#" MasterPageFile="~/adminms.Master" AutoEventWireup="true" CodeBehind="adfeedback.aspx.cs" Inherits="citygas.Admin.adfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="form13" runat="server">
   <br />
    <br />
         <div style="font-family: 'Plantagenet Cherokee'"  >
                <h2 style="color: #000000; font-family: 'Perpetua Titling MT';">FEEDBACK DETAILS</h2>
       
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataSourceID="SqlDataSource1" Width="100%" CellPadding="4" ShowHeaderWhenEmpty="True" ForeColor="#333333" DataKeyNames="fid" >
       <AlternatingRowStyle BackColor="White" />
         <Columns>
              <asp:TemplateField>
        <ItemTemplate>
        <asp:LinkButton ID="LinkButton1" Runat="server" 
            OnClientClick="return confirm('Are you sure you?');" 
            CommandName="Delete">Delete</asp:LinkButton>
        </ItemTemplate>
    </asp:TemplateField>
               <asp:BoundField DataField="fid" HeaderText="Feedback Id" SortExpression="fid" />
            <asp:BoundField DataField="custid" HeaderText="Customer Id" SortExpression="custid" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
            <asp:BoundField DataField="feedback" HeaderText="Feedback" SortExpression="feedback" />
        </Columns>
        <EditRowStyle Font-Size="20px" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gasConnectionString %>" SelectCommand="SELECT [fid], [custid], [name], [email], [feedback] FROM [feedback]" DeleteCommand="DELETE FROM feedback  WHERE fid=@fid">
         <DeleteParameters>
        <asp:Parameter Name="custd"  />
    </DeleteParameters>

    </asp:SqlDataSource>
</form>                  	
</asp:Content>
