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
			<input type="text" id="pictureURL" name="pictureURL" class="form-control" placeholder="URL" onkeyup="updatePicture()" />
		</div>
		<div class="text-center" >
            <img src="https://www1.specialolympicsontario.com/wp-content/uploads/2017/01/Insert-Photo-Here.jpg" id ="product" class="rounded" style="max-width: 200px; max-height: 200px;"/>
		</div>
		<div class="text-center">
            <asp:Button ID="Ajouter" class="btn btn-primary to-right mt-4" runat="server" Text="Ajouter" OnClick="Ajouter_Click" />
		</div>
	</div>
	<script  type ="text/javascript" >
        function updatePicture() {
            var url = document.getElementById("pictureURL").value;
            var img = document.getElementById("product");
            img.src = url;
            img.onerror = function () {
                img.src = "https://www.redanglagoon.com/notfound.png";
            }
        }
	</script>
</asp:Content>
