<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkinda.aspx.cs" Inherits="DiziveFilm.Hakkinda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


	<div class="about-content">
	 <div class="container">
		 <h2>Hakkımızda</h2>
		 <div class="about-section">
			 <div class="about-grid">
				 <h3>İçerik Yönetimi Hakkında</h3>
					<asp:Repeater ID="Repeater1" runat="server">
					 <ItemTemplate>
						  <p> <%# Eval("Aciklama") %></p>
					 </ItemTemplate>
				    	</asp:Repeater>	
			 </div>
		  </div>		 
	  </div>
</div>
	



</asp:Content>
