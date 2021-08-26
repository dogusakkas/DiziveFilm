<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Istatistik.aspx.cs" Inherits="DiziveFilm.AdminSayfalar.Istatistik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered">
        <tr>
            <th style="color:red">Toplam Blog Sayısı</th> <td> <asp:Label ID="Lbl_Toplam_Blog" runat="server" Text="Label"></asp:Label></td> 
            <th>Toplam Yorum Sayısı</th> <td> <asp:Label ID="Lbl_Toplam_Yorum" runat="server" Text="Label"></asp:Label></td>
            <th>Film Sayısı </th> <td> <asp:Label ID="Lbl_Film_Sayısı" runat="server" Text="Label"></asp:Label></td>
        </tr>
        
        <tr>
            <th>Dizi Sayısı </th> <td> <asp:Label ID="Lbl_Dizi_Sayısı" runat="server" Text="Label"></asp:Label></td>
            <th>Macera Sayısı </th> <td> <asp:Label ID="Lbl_Macera_Sayısı" runat="server" Text="Label"></asp:Label></td>
            <th><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/BlogDetay.aspx">En Fazla Yorumlu Blog Sayısı</asp:HyperLink></th>
            <th>En Fazla Yorumlu Blog Sayısı </th> <td> <asp:Label ID="Lbl_En_Fazla_Yorumlu_Blog" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>

</asp:Content>
