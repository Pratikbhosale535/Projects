<%@ Page Title="" Language="C#" MasterPageFile="~/withlgnst.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="citygas.withlogin.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br><br >
    <section id="contact-info" style="border: thick solid #C0C0C0">
        <div class="center" margin-top:5%; margin-right: 3%; width:100%; background-image: url('images/123.png'); background-repeat: inherit; background-attachment: inherit;" style="background-image: url('images/123.png')">                
            <h2 style="font-family: 'Perpetua Titling MT'; color: #FFFF99;">&nbsp;</h2>
            <h2 style="font-family: 'Perpetua Titling MT'; color: #FFFF99;">How to Reach Us?</h2>
        </div>
        <div class="gmap-area" style="background-image: url('images/buttons/map.jpg')">
           <div class="row">
                    <div class="col-sm-5 text-center">
                        <div class="gmap">
                          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7534.626027826155!2d72.8303174!3d19.22518540000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x90e3fbb97c11457!2sChetan+Kirana+Store!5e0!3m2!1sen!2sin!4v1517667249251" width="400" height="440" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>

                    <div class="col-sm-7 map-content1"  style="text-align: center">
                        <address>
                        </address>
                        <h5 style="font-family: 'Plantagenet Cherokee'; font-size: 37px; color: #333333">Head Office</h5>
                        <p style="font-family: 'Plantagenet Cherokee';color: #666666; font-size: 25px; height: 51px;">
                            ADDRESS:- 64/C-10,Amey chs,<br />Gorai-1,Borivali-west.</p>
                        <p style="font-family: 'Plantagenet Cherokee';color: #666666; font-size: 25px; height: 27px;">
                            Landmark:- Near Chetan Kirana Store.</p>
                        <p style="font-family: 'Plantagenet Cherokee';color: #666666; font-size: 25px; height: 31px;">
                            Phone:- 022-28685398(TollFree)</p>
                        <p style="font-family: 'Plantagenet Cherokee';color: #666666; font-size: 25px; height: 33px;">
                            Email:-&nbsp; citygasagency@gmail.com</p>
                        <address>
                        </address>
                        </div>
               </div>
            </div>
       
          
    </section>
      <div class="get-started center wow fadeInDown">
                <h2 style="font-family: 'Plantagenet Cherokee'; font-size: 40px">DROP YOUR MESSAGE</h2>
                <p class="lead" style="font-family: 'Plantagenet Cherokee'; font-size: 25px">ANY QUESTION OR QUERIES </p>
                <div class="request">
                    <h4><a href="feedback.aspx" style="font-family: 'Plantagenet Cherokee'; font-size: 23px;">CLICK HERE</a></h4>
                </div>
            </div>
</asp:Content>
