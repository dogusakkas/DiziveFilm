<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BlogGuncelle.aspx.cs" Inherits="DiziveFilm.AdminSayfalar.BlogGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" class="form-group">
        <asp:TextBox ID="Txt_Baslik" runat="server" CssClass="form-control" placeholder="Blog Başlık"></asp:TextBox>
        <br />
        <asp:TextBox ID="Txt_Tarih" runat="server" CssClass="form-control" placeholder="Blog Tarih"></asp:TextBox>
        <br />
        <asp:TextBox ID="Txt_Gorsel" runat="server" CssClass="form-control" placeholder="Blog Görsel"></asp:TextBox>
        <br />
        <asp:TextBox ID="Txt_Fragman" runat="server" CssClass="form-control" placeholder="Blog Fragman"></asp:TextBox>
        <br />
        <asp:Label ID="label1" runat="server"  Text="Tür"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form form-control"  DataTextField="TurAd" DataValueField="TurID"><%--<asp:ListItem  Value="0"  Text="Tür">Tür</asp:ListItem>--%></asp:DropDownList>
        <br />
        <asp:Label ID="label2" runat="server"  Text="Kategori"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" DataTextField="KategoriAd" DataValueField="KategoriID"></asp:DropDownList>
        <br />
        <asp:TextBox ID="Txt_Icerik" runat="server" CssClass="form-control" placeholder="Blog İçerik" Height="100" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:Button ID="Btn_Guncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Btn_Guncelle_Click" />

    </form>

</asp:Content>
