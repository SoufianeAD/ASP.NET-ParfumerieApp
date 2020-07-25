<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientCart.aspx.cs" Inherits="BoutiqueParfums.ClientCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Client Cart</title>
    <link href="resources/theme-admin/css/startbootstrap-shop-homepage-gh-pages/startbootstrap-shop-homepage-gh-pages/css/shop-homepage.css" rel="stylesheet"/>
	<link href="resources/theme-admin/css/startbootstrap-shop-homepage-gh-pages/startbootstrap-shop-homepage-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/theme-admin/css/startbootstrap-simple-sidebar-gh-pages/startbootstrap-simple-sidebar-gh-pages/css/simple-sidebar.css" />

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
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			        <span class="navbar-toggler-icon"></span>
			      </button>
			      <div class="collapse navbar-collapse" id="navbarResponsive">
			        <ul class="navbar-nav ml-auto">
						<li class="mr-3 nav-item">
							<a class="navbar-brand" href="Default.aspx"> <i class="fas fa-shopping-cart" style="color: yellow; font-size: 24px;"></i></a>
						</li>
				      	<li class="nav-item" >
				      		<a class="btn btn-outline-secondary" href="Default.aspx" style="margin-right: 5px;">
						        <i class="fa fa-sign-out"></i> Déconnexion
						    </a>
				      	</li>
			  		</ul>
		      </div>
		  </nav>
        <div class="container">

        </div>
    </form>
</body>
</html>
