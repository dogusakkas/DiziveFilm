<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="DiziveFilm.Sayfalar.BlogDetay" MaintainScrollPositionOnPostback="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
    <!DOCTYPE HTML>
    <html>
    <head>


        <link href="Tasarım/web/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="Tasarım/web/css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Personal Blog Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!----webfonts---->
        <link href='http://fonts.googleapis.com/css?family=Oswald:100,400,300,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,300italic' rel='stylesheet' type='text/css'>
        <!----//webfonts---->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--end slider -->
        <!--script-->
        <script type="text/javascript" src="Tasarım/web/js/move-top.js"></script>
        <script type="text/javascript" src="Tasarım/web/js/easing.js"></script>
        <!--/script-->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 900);
                });
            });
        </script>
        <!---->

    </head>
    <body>
        <!---header---->
        <div class="header">
        </div>
        <!--/header-->
        <div class="single">
            <div class="container">
                <div class="col-md-8 single-main">
                    <div class="single-grid">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <img src="<%# Eval("BlogGorsel")%>" alt="" style="height: 900px; width: 600px; margin-bottom: 50px" />
                                <h3><%# Eval("BlogBaslik") %></h3>
                                <p><%# Eval("BlogIcerik") %></p>
                                <%--<p <%#Eval("BlogFragman")%>></p>--%>
                                <br />
                                <iframe width="730" height="430" src="<%# Eval("BlogFragman")%>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"></iframe>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>

                    <br />
                    <h4 class="section_heading">
                        <asp:Label ID="Lbl_Isim" runat="server" Text="Toplam Yorum Sayısı : "></asp:Label>
                        <asp:Label ID="Lbl_Toplam_Yorum_Sayisi" runat="server" Text="Label"></asp:Label>
                        
                    </h4>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <ul class="comment-list">
                                <%--<h5 class="post-author_head">Written by <a href="#" title="Posts by admin" rel="author">admin</a></h5>--%>


                                <li>
                                    <img src="Tasarım/web/images/avatar.png" class="img-responsive" alt="">
                                    <div class="desc">
                                        <p style="font-weight: bolder">
                                        <p><%# Eval("KullaniciAdSoyad") %> </p>
                                        <br></br>
                                        <p><%# Eval("YorumIcerik") %></p>
                                        <p style="font-weight: bolder">
                                        <p><%# Eval("KullaniciAdSoyad") %> </p>
                                        <br></br>
                                        <p><%# Eval("YorumIcerik") %></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </ul>
                        </ItemTemplate>
                    </asp:Repeater>
                    <br />
                    <div class="content-form">
                        <h3>Yorumunuzu Bizden Esirgemeyin</h3>
                        <form runat="server">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı Adınız" required=""></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Adresiniz"></asp:TextBox>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Yorumunuz" TextMode="MultiLine" Height="200"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Yorum Yap" OnClick="Button1_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>


