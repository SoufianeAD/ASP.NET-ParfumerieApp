<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BoutiqueParfums._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <!-- Masthead-->
        <header class="masthead" id="page-top">
            <div class="container">
                <div class="masthead-heading">Welcome To Our shop!</div>
                <div class="masthead-subheading text-uppercase">Explore our world</div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#portfolio">Start now</a>
            </div>
        </header>
        <!-- Ingredients-->
        <section class="page-section bg-light" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Natural Ingredients</h2>
                </div>

                <div class="row text-center">
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/Willow.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h5 class="mt-3">L’Écorce de Saule Blanc</h5>
                    </div>
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/cranberry.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h4 class="mt-3">La Canneberge</h4>
                    </div>
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/cherries.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h4 class="mt-3">La Cerise Sucrée</h4>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/Cloudberry.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h4 class="mt-3">La Chicouté</h4>
                    </div>
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/Strawberry.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h4 class="mt-3">La Fraise</h4>
                    </div>
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/Raspberry.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h4 class="mt-3">La Framboise</h4>
                    </div>
                </div>

                <div class="row text-center">
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/Blackberry.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h4 class="mt-3">La Mûre</h4>
                    </div>
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/Coconut.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h4 class="mt-3">La Noix de Coco</h4>
                    </div>
                    <div class="col-md-4">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="https://media-afr-cdn.oriflame.com/-/media/Images/Ingredient-Library/Ingredients/Wild-Pansy.ashx?u=0101010000&w=220&h=220&imageFormat=Jpeg&q=90" alt="" /></div>
                        <h4 class="mt-3">La Pensée Sauvage</h4>
                    </div>
                </div>
            </div>
        </section>
        <!-- products Grid-->
        <section class="page-section" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Nos Parfums</h2>
                </div>
                <div class="row">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" class="col-lg-4 col-sm-6 mb-4" HorizontalAlign="Center" RepeatColumns="4" Width="95%" CellPadding="20" CellSpacing="50">
                        <ItemTemplate>
                                <div class="portfolio-item">
                                    <a class="portfolio-link text-center" href="ProductDetails.aspx"
                                        onclick="onDetails('<%# Eval("Id") %>', '<%# Eval("Picture") %>', '<%# Eval("Designation") %>', '<%# Eval("Prix") %>');">
                                        <div class="portfolio-hover">
                                            <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                        </div>
                                        <img  src="<%# Eval("Picture") %>" alt="" />
                                    </a>
                                    <div class="portfolio-caption">
                                        <div class="portfolio-caption-subheading" style="height: 50px;"><%# Eval("Designation") %></div>
                                        <div class="portfolio-caption-heading"><b><%# Eval("Prix") %> Dhs</b></div>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BoutiqueParfumsConnectionString %>" SelectCommand="SELECT * FROM [Produit]"></asp:SqlDataSource>
                </div>
            </div>
        </section>
        <!-- Team-->
        <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Our Amazing Team</h2>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="/resources/assets/img/team/kaoutarELMOFATICHE.jpg" alt="" />
                            <h4>Kaoutar El MOFATICHE</h4>
                            <p class="text-muted">Lead Designer</p>
                            <a class="btn btn-dark btn-social mx-2" href="ListProducts.aspx"><i class="fas fa-cogs"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    
                    <div class="col-lg-6">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="/resources/assets/img/team/zinebMOUKIR.jpg" alt="" />
                            <h4>Zineb MOUKIR</h4>
                            <p class="text-muted">Lead Developer</p>
                            <a class="btn btn-dark btn-social mx-2" href="ListProducts.aspx"><i class="fas fa-cogs"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Contact Us</h2>
                </div>
                <form id="contactForm" name="sentMessage" novalidate="novalidate">
                    <div class="row align-items-stretch mb-5">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control" name="name" id="name" type="text" placeholder="Your Name *" required="required" data-validation-required-message="Please enter your name." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <input class="form-control" name="email" id="email" type="email" placeholder="Your Email *" required="required" data-validation-required-message="Please enter your email address." />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group mb-md-0">
                                <input class="form-control" name="phone" id="phone" type="tel" placeholder="Your Phone *" required="required" data-validation-required-message="Please enter your phone number." />
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group form-group-textarea mb-md-0">
                                <textarea class="form-control" name="message" id="message" placeholder="Your Message *" required="required" data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <div id="success"></div>
                        <asp:Button ID="sendMessageButton" runat="server" Text="Send Message" class="btn btn-primary btn-xl text-uppercase" OnClick="sendMessageButton_Click" />
                    </div>
                </form>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer py-4">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright © Your Website 2020</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-right">
                        <a class="mr-3" href="#!">Privacy Policy</a>
                        <a href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
        <!--Modals-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog w-50 p-0">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <img src="/resources/assets/img/close-icon.svg" alt="Close modal" />
                    </div>
                    <div class="container p-0">
                        <div class="row justify-content-center p-0">
                            <div class="col-lg-10">
                                <div class="modal-body p-0">
                                    <!-- Product Details Go Here-->
                                    <img class="img-fluid d-block mx-auto" id="pictureModal" src="#" alt="" />
                                    <h4 class="text-uppercase" id="designation"></h4>
                                    <h3 class="" id="price"></h3>
                                    <button class="btn btn-primary mt-3" data-dismiss="modal" type="button" 
                                        onclick="onValidateAchat(localStorage.getItem('selectedItem'))">Ajouter au Panier</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script  type ="text/javascript" >

            function onDetails(id, src, designation, price) {
                localStorage.setItem('selectedItemId', id);
                localStorage.setItem('selectedItemSrc', src);
                localStorage.setItem('selectedItemDesignation', designation);
                localStorage.setItem('selectedItemPrice', price);
            }

	    </script>

</asp:Content>
