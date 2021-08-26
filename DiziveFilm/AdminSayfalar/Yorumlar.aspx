<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="DiziveFilm.AdminSayfalar.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Kullanıcı Ad Soyad</th>
            <th>Blog</th>
            <th>Yorum</th>
            <th>Sil</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("YorumID") %></td>
                    <td><%# Eval("KullaniciAdSoyad") %></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server" Target="_blank" NavigateUrl="../BlogDetay.aspx?YorumID==BlogID"> <%#Eval("BlogBaslik") %></asp:HyperLink></td>
                    <td><%# Eval("YorumIcerik") %></td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "YorumSil.aspx?YorumID="+Eval("YorumID") %>' CssClass="btn btn-danger" >Sil</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

</asp:Content>
