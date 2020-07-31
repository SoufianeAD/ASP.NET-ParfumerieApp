<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="BoutiqueParfums.ProductDetails" %>

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
    <style>
        body {
            background-color: #f0eeeb;
        }
    </style>
</head>
<body onload="LoadDetailsInfo()">
    <form id="form1" runat="server">
        
        <div class="container mt-5">
             <div class="container border p-5 text-center mt-3 bg-light">
                 <a href="Default.aspx#portfolio" class="float-left btn btn-primary rounded-circle"
                   data-toggle="tooltip" data-placement="bottom" title="retour">
                  <i class="fa fa-arrow-left"></i>
                </a>
                 <img class="img-fluid d-block mx-auto" id="pictureModal" src="#" alt="" />
                 <h4 class="text-uppercase mt-5" id="designation"></h4>
                 <h3 class="" id="price"></h3>
                 <input type="text" name="idProduct" id="idProduct" style="display: none;" />
                 <asp:Button class="btn btn-primary mt-3" ID="buy" runat="server" Text="Ajouter au Panier" OnClick="buy_Click" />
             </div>
        </div>

    </form>
    <script  type ="text/javascript" >

        function LoadDetailsInfo() {
            /*localStorage.getItem('selectedItemId');
            localStorage.getItem('selectedItemSrc');
            localStorage.getItem('selectedItemDesignation');
            localStorage.getItem('selectedItemPrice');*/

            var id = document.getElementById("idProduct");
            var picture = document.getElementById("pictureModal");
            var des = document.getElementById("designation");
            var pri = document.getElementById("price");

            id.value = localStorage.getItem('selectedItemId');
            picture.src = localStorage.getItem('selectedItemSrc');
            des.innerHTML = localStorage.getItem('selectedItemDesignation');
            pri.innerHTML = localStorage.getItem('selectedItemPrice') + ' Dhs';
        }

	    </script>
</body>
</html>
