<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpClient.aspx.cs" Inherits="BoutiqueParfums.SignUpClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Oriflame Boutique</title>
    <link rel="icon" type="image/x-icon" href="/resources/assets/img/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/resources/css/styles.css" rel="stylesheet" />
</head>
<body style="height: 100%; background-color: #f0eeeb;">
    <form id="form1" runat="server">
        <div class="container border" style="width: 30%; margin-top: 5%; background-color: white;">
			<div  class="text-center border border-light p-5">
                <a class="" href="Default.aspx"><img src="/resources/assets/img/navbar-logo.svg" alt="" /></a>
			 	<p class="h4 mb-4 mt-3">Sign up</p>
				<div class="form-group">
                    <asp:TextBox class="form-control" ID="Email" placeholder="Email" runat="server"></asp:TextBox>
				</div>
				<div class="form-group">
                    <input  class="form-control" id="password" type="password" placeholder="password"/>
				</div>
                <div class="form-group">
                    <asp:TextBox class="form-control" ID="ConfirmPassword" placeholder="Confirmation Password" runat="server"></asp:TextBox>
				</div>
                <asp:Button ID="Button1" runat="server" Text="S'Inscrire" class="btn btn-info mt-1"/>
				<div class="mt-3"><a href="Login.aspx">S'Authentifier</a></div>
			</div>
		</div>
    </form>
</body>
</html>
