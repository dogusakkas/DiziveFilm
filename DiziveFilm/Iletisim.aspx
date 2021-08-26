<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="DiziveFilm.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--/header-->
    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2>İletişim</h2>
                <p>Sitemize öneri, şikayet ve telif hakları için bizimle iletişime geçin. Mail adresinizi doğru bir şekilde yazdığınızdan emin olun.</p>
            </div>
            <div class="contact-details">
                <form runat="server">
                    <asp:TextBox ID="Txt_AdSoyad" runat="server" placeholder="Ad Soyad" required="" style="color:black"></asp:TextBox>
                    <asp:TextBox ID="Txt_Mail" runat="server" placeholder="Mail" required="" style="color:black"></asp:TextBox>
                    <asp:TextBox ID="Txt_Telefon" runat="server" placeholder="Telefon" required="" style="color:black"></asp:TextBox>
                    <asp:TextBox ID="Txt_Konu" runat="server" placeholder="Konu" required="" style="color:black"></asp:TextBox>
                    <asp:TextBox ID="Txt_Mesaj" runat="server" placeholder="Mesajınız" required="" TextMode="MultiLine" Height="200" style="color:black"></asp:TextBox>
                    <asp:Button ID="Btn_Gonder" runat="server" Text="Gönder" OnClick="Btn_Gonder_Click1" />
                </form>
            </div>
            <div class="contact-details">
                <div class="col-md-6 contact-map">
                    <h4>Biz Buradayız</h4>

                   <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=manisa&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.online-timer.net"></a><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>

                </div>
                <div class="col-md-6 company_address">
                    <h4>Bizimle İletişim Kurun</h4>
                    <p>Türkiye - Manisa</p>
                    <p> <a href="tel://05533394927">0 553 339 49 27</a></p>
                    <p>Fax: (236) 238 68 31</p>
                    <p>Email: <a href="mailto:dogusakkas@gmail.com">dogusakkas@gmail.com</a></p>
                    <p>Bizi takip edin: <a href="https://www.linkedin.com/in/dogusakkas/" target="_blank" >Linkedin</a>, <a href="https://www.instagram.com/dogusakkas/" target="_blank">Instagram</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>


</asp:Content>
