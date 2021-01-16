<%@ Page Title="" Language="C#" MasterPageFile="~/withlgnst.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="citygas.withlogin.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form76" runat="server">

              <div id="contact-page clearfix">
                            <div class="status alert alert-success" style="display: none"></div>
                            <div class="message_heading">
                                <h4 style="font-size: 50px; background-color: #FFFFFF; font-family: 'Perpetua Titling MT';">GIVE FEEDBACK</h4>
                                <p style="background-color: #FFFFFF; font-family: 'Perpetua Titling MT';">Make sure you enter the(*)required information.</p>
                            </div> 
      
                            </div>
                                <div class="row">
                                    <div class="col-sm-5">
                                          <div class="form-group" style="font-family: 'Perpetua Titling MT'; font-size: large">
                                            <label>Customer Id</label>
                                              <br />
                                              <asp:TextBox ID="custid" runat="server" required="required"  BorderStyle="Solid" Height="40px" Width="450px" BorderColor="Black" BorderWidth="3px"></asp:TextBox>
                                        </div> 
                                        <div class="form-group">
                                            <label style="font-size: large; font-family: 'Perpetua Titling MT'">Name *</label>
                                            <br />
                                           <asp:TextBox ID="name" runat="server" required="required"  BorderStyle="Solid" Height="40px" Width="450px" BorderColor="Black" BorderWidth="3px"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label style="font-family: 'Perpetua Titling MT'; font-size: large">Email *</label>
                                            <br />
                                            <asp:TextBox ID="email" runat="server" required="required"  BorderStyle="Solid" Height="40px" Width="450px" BorderColor="Black" BorderWidth="3px" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                                         
                                    </div>
                                    <div class="col-sm-7">                        
                                        <div class="form-group">
                                            <label style="font-family: 'Perpetua Titling MT'; font-size: large">Feedback*</label>
                                            <br />
                                            <asp:TextBox ID="feed" runat="server" required="required"  BorderStyle="Solid" Height="200px" Width="550px" BorderColor="Black" BorderWidth="3px" TextMode="MultiLine"></asp:TextBox>
                                        </div>     
                                        <asp:Label ID="lbl" runat="server" BackColor="White" ForeColor="#C60000" Font-Bold="True" Font-Size="22px"></asp:Label>
                                        <br />               
                                        <div class="form-group" style="font-size: large">                                         
                                           <asp:Button ID="btn" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="287px"  Text="SUBMIT" OnClick="btn_Click" /> 
                                              &nbsp&nbsp&nbsp;&nbsp;
                                            <asp:Button ID="btn2" runat="server" BackColor="#158AFF" BorderColor="White" BorderWidth="3px" ForeColor="White" Height="53px"  BorderStyle="Outset" Font-Bold="True" Font-Size="25px" Width="287px"  Text="CANCEL" OnClick="btn2_Click"  />
                                        </div>
                                    </div>
                                </div>
                            </form>
</asp:Content>
