<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="NewProduct.aspx.cs" Inherits="BoutiqueParfums.NewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
		<h2>Nouveau Produit</h2>
    </div>
    <div class="border border-light p-5">
		<div class="form-group">
			<label>Désignation :</label>
            <asp:TextBox ID="designation" class="form-control" runat="server"  placeholder="Désignation"></asp:TextBox>
		</div>
		<div class="form-group">
			<label>Catégorie :</label>
            <asp:TextBox class="form-control" ID="category" placeholder="Catégorie" runat="server"></asp:TextBox>
		</div>
		<div class="form-group">
			<label>Prix :</label>
            <asp:TextBox class="form-control" ID="price" placeholder="Prix" runat="server"></asp:TextBox>
		</div>
		<div class="form-group">
			<label>Image URL :</label>
            <asp:TextBox class="form-control" ID="pictureURL" placeholder="URL" runat="server"></asp:TextBox>
		</div>
		<div class="text-center">
            <asp:Button ID="Ajouter" class="btn btn-primary to-right" runat="server" Text="Ajouter" OnClick="Ajouter_Click" />
		</div>
	</div>
</asp:Content>
