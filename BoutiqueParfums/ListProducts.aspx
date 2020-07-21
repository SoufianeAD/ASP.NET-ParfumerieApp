<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ListProducts.aspx.cs" Inherits="BoutiqueParfums.ListProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
		<h2>Liste des Produits</h2>
    </div>
    <asp:GridView ID="Products" class="table" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:ImageField DataImageUrlField="Picture" HeaderText="Picture" ControlStyle-Height="100" ControlStyle-Width="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Prix" HeaderText="Prix" SortExpression="Prix" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BoutiqueParfumsConnectionString %>" SelectCommand="SELECT * FROM [Produit]" DeleteCommand="DELETE FROM [Produit] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Produit] ([Designation], [Prix], [Category], [Picture]) VALUES (@Designation, @Prix, @Category, @Picture)" UpdateCommand="UPDATE [Produit] SET [Designation] = @Designation, [Prix] = @Prix, [Category] = @Category, [Picture] = @Picture WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Prix" Type="Double" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="Prix" Type="Double" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Picture" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
