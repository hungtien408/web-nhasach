<%@ Page Title="" Language="C#" MasterPageFile="~/site-gv.master" AutoEventWireup="true"
    CodeFile="meo-vat-chi-tiet.aspx.cs" Inherits="gioi_thieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ListView ID="lstTipDetails" runat="server" DataSourceID="odsTipDetails" EnableModelValidation="True">
        <ItemTemplate>
            <div class="gioithieu container-in">
                <div class="wrapper-text about-us">
                    <h4 class="text-uppercase title mo-640">
                        <%# Eval("ProductName") %></h4>
                    <h4 class="text-uppercase title tit-640">
                        <%# Eval("ProductName") %></h4>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                    <%--<div class="fb-like" data-href='<%# Page.Request.Url.AbsolutePath %>' data-send="false"
                        data-share="true" data-layout="button_count" data-width="50" data-show-faces="true">
                    </div>--%>
                </div>
                <%--<div id="fb-root">
                </div>
                <script>                    (function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id)) return;
                        js = d.createElement(s); js.id = id;
                        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.4";
                        fjs.parentNode.insertBefore(js, fjs);
                    } (document, 'script', 'facebook-jssdk'));</script>--%>
                <div class="fb-like" data-href='<%= Request.Url.Scheme + "://" + Page.Request.Url.Host + "/" + Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/", System.StringComparison.Ordinal) + 1) %>'
                    data-layout="standard" data-action="like" data-size="small" data-show-faces="true"
                    data-share="true">
                </div>
                <div class="fb-comments" data-href='<%= Request.Url.Scheme + "://" + Page.Request.Url.Host + "/" + Request.Url.AbsolutePath.Substring(Request.Url.AbsolutePath.LastIndexOf("/", System.StringComparison.Ordinal) + 1) %>'
                    data-width="800" data-numposts="5" data-colorscheme="light">
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsTipDetails" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="mi" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="meovat article-same container-in">
        <div class="main-gv-title">
            <h2>
                Tin liên quan</h2>
        </div>
        <asp:ListView ID="lstSame" runat="server" DataSourceID="odsSame" EnableModelValidation="True">
            <ItemTemplate>
                <li><a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-mi-" + Eval("ProductID") + ".aspx" %>'>
                    <span class="icona-left fa fa-long-arrow-right"></span>
                    <%# Eval("ProductName") %></a></li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul class="list-same">
                    <li runat="server" id="itemPlaceholder"></li>
                </ul>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsSame" runat="server" SelectMethod="ProductSameSelectAll"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="mi"
                    Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
