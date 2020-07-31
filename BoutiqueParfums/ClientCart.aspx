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
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js"></script>
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
                      <ul class="navbar-nav">
                          <li class="mr-3 nav-item">
							<a class="navbar-brand" href="Default.aspx#portfolio"> <i class="fas fa-shopping-cart" style="color: yellow; font-size: 24px;"></i></a>
						</li>
                      </ul>
			        <ul class="navbar-nav ml-auto">
                        <li class="nav-item" >
                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-outline-secondary" OnClick="LinkButton1_Click">
                                <i class="fas fa-sign-out-alt"></i> Déconnexion
                            </asp:LinkButton>
                        </li>
			  		</ul>
		      </div>
		  </nav>
        <div id="page-content-wrapper">
				<div class="container-fluid">
					<div class="container border spacing" style="width: 70%; margin-top: 5%; margin-bottom: 5%; padding: 2% 2% 0% 2%;">
                        <div class="text-center">
		            <h2 class="masthead-heading mt-1 mb-2">Liste des Achats</h2>
                </div>
                <asp:GridView ID="Products" class="table" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:ImageField DataImageUrlField="Picture" HeaderText="Picture" ControlStyle-Height="100" ControlStyle-Width="100">
            <ControlStyle Height="100px" Width="100px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                        <asp:BoundField DataField="Prix" HeaderText="Prix" SortExpression="Prix" />
                        <asp:CommandField ShowDeleteButton="True">
                        <ItemStyle ForeColor="Blue" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BoutiqueParfumsConnectionString %>" 
                    SelectCommand="SELECT Produit.Id, Designation, Prix, Category, Picture FROM Produit Inner join CartProduct on Produit.Id = CartProduct.IdProduct
                    And CartProduct.IdCart = (select IdCart from client where Client.Id = @UserIn)"
                    DeleteCommand="DELETE FROM [CartProduct] WHERE [IdProduct] = @Id and IdCart = (select IdCart from client where Id = @UserIn)">
                    <SelectParameters>
                        <asp:SessionParameter Name="UserIn" Type="String" SessionField="UserIn" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:SessionParameter Name="UserIn" Type="String" SessionField="UserIn" />
                    </DeleteParameters>
                    
            </asp:SqlDataSource>
                       <div class="text-center">
						    <button class="btn btn-info mt-3 mb-3" type="button" data-toggle="modal" data-target="#myModal">Payment</button>
                       </div>
				</div>
                    
            </div>
        </div>
        
    </form>

    <!-- Modal -->
  		<div id="myModal" class="modal fade" role="dialog">
		  <div class="modal-dialog">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		      	<h3>Payment Details</h3>
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		      </div>
		      <div class="modal-body">
		        <div class="container to-center">
		       		 <!-- content -->
					<div class="row">
					<!-- You can make it whatever width you want. I'm making it full width
					on <= small devices and 4/12 page width on >= medium devices -->
					<div class="col-xs-12 col-md-10">
					
					
					<!-- CREDIT CARD FORM STARTS HERE -->
					<div class="panel panel-default credit-card-box p-3 ml-3">
					<div class="panel-heading display-table" >
					<div class="row display-tr" >
					<h3 class="panel-title display-td"></h3>
					<div class="display-td" >                            
					<img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
					</div>
					</div>                    
					</div>
					<div class="panel-body">
					<div class="row">
					<div class="col-xs-12">
					<div class="form-group">
					<label for="cardNumber">CARD NUMBER</label>
					<div class="input-group">
					<input 
					type="tel"
					class="form-control mr-3"
					name="cardNumber"
					placeholder="Valid Card Number"
					autocomplete="cc-number"
					required autofocus 
					/>
					<span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
					</div>
					</div>                            
					</div>
					</div>
					<div class="row">
					<div class="col-xs-9 col-md-9">
					<div class="form-group">
					<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
					<input 
					type="tel" 
					class="form-control" 
					name="cardExpiry"
					placeholder="MM / YY"
					autocomplete="cc-exp"
					required 
					/>
					</div>
					</div>
					<div class="col-xs-5 col-md-5 pull-right">
					<div class="form-group">
					<label for="cardCVC">CV CODE</label>
					<input 
					type="tel" 
					class="form-control"
					name="cardCVC"
					placeholder="CVC"
					autocomplete="cc-csc"
					required
					/>
					</div>
					</div>
					</div>
					<div class="row">
					<div class="col-xs-12">
					<div class="form-group">
					<label for="couponCode">COUPON CODE</label>
					<input type="text" class="form-control" name="couponCode" />
					</div>
					</div>                        
					</div>
					<div class="row">
					<div class="col-xs-10">
					<div class="text-center">
	<!-- ici -->		<button class="btn btn-primary">Valider</button>
					</div>
					</div>
					</div>
					<div class="row" style="display:none;">
					<div class="col-xs-12">
					<p class="payment-errors"></p>
					</div>
					</div>
					</div>
					</div>            
					<!-- CREDIT CARD FORM ENDS HERE -->
					
					
					</div>            
					
					
					
					</div>
					</div>
					<!-- Content end -->
		      </div>
		      
		    </div>
		
		  </div>
  		</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
