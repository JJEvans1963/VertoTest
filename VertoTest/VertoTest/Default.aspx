<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VertoTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <img src="Images/BannerImage.png" />

    <div class="grid-container">
        <div class="grid-x grid-padding-x">
            <div class="large-3 medium-3 small-3 cell">
                <h1>New Products</h1>
                <img class="thumbnail" src="Images/NewProducts.png" />
                <p>Lorem ipsum dolor sit amet, dictas inermis. Eam odio modo cibo at. Purto dignissim euripidis eu mel, cu mel</p>
                <a href="#" class="button expanded">New Products</a>
            </div>
            <div class="large-3 medium-3 small-3 cell">
                <h1>Field Events</h1>
                <img class="thumbnail" src="Images/FieldEvents.png" />
                <p>Lorem ipsum dolor sit amet, dictas inermis. Eam odio modo cibo at. Purto dignissim euripidis eu mel, cu mel</p>
                <a href="#" class="button expanded">View Events</a>
            </div>
            <div class="large-3 medium-3 small-3 cell">
                <h1>Latest News</h1>
                <img class="thumbnail" src="Images/LatestNews.png" />
                <p>Lorem ipsum dolor sit amet, dictas inermis. Eam odio modo cibo at. Purto dignissim euripidis eu mel, cu mel</p>
                <a href="#" class="button expanded">Read Article</a>
            </div>
            <div class="large-3 medium-3 small-3 cell">
                <h1>Gallery</h1>
                <img class="thumbnail" src="Images/Gallery.png" />
                <p>Lorem ipsum dolor sit amet, dictas inermis. Eam odio modo cibo at. Purto dignissim euripidis eu mel, cu mel</p>
                <a href="#" class="button expanded">View Gallery</a>
            </div>
        </div>
    </div>

    <div class="grid-container">
        <div class="text-center">
            <h3>Special Offers</h3>
        </div>    

        <div class="grid-x grid-padding-x">
            <div class="large-3 medium-3 small-3 cell">
                <div class="primary">
                    <img class="thumbnail" src="Images/DiscoveryWP_PC.png" />
                    <p>Discovery WP PC £20 Cashback</p>
                </div>
            </div>
            <div class="large-3 medium-3 small-3 cell">
                <div class="primary">
                    <img class="thumbnail" src="Images/Olympus.png" />
                    <p>HR ED Fieldscopes Free Digiscoping Kit</p>
                </div>
            </div>
            <div class="large-3 medium-3 small-3 cell">
                <div class="primary">
                    <img class="thumbnail" src="Images/FieldscopeKits.png" />
                    <p>IS 60 WP Fieldscope Kits Save 20%</p>
                </div>
            </div>
        </div>

        <div class="grid-x grid-padding-x">
            <div class="large-4 medium-4 small-4 cell">
            </div>
            <div class="large-4 medium-4 small-4 cell">
                <a href="#" class="button">View All Offers</a>
            </div>
            <div class="large-4 medium-4 small-4 cell">
            </div>
        </div>
    </div>

    <div class="grid-container">
        <div class="text-center">
            <h3>Product Categories</h3>
        </div>    

        <div class="grid-x grid-padding-x">

            <asp:repeater id="Repeater1" datasourceid="SqlDataSource1" runat="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <div class="large-2 medium-2 small-2 cell">
                        <img class="thumbnail" src="<%# Eval("ImageUrl") %> " />
                        <p><%# Eval("ProductTitle") %></p>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:repeater>
              
            <asp:sqldatasource id="SqlDataSource1" ProviderName="<%$ ConnectionStrings:ProductCategory.ProviderName %>"         
                  connectionstring="<%$ ConnectionStrings:ProductCategory%>" 
              selectcommand="SELECT ProductId, ImageUrl, ProductTitle FROM [ProductCategory]"
              runat="server">
            </asp:sqldatasource>
        </div>
    </div>
               
</asp:Content>
