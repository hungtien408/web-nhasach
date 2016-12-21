<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div id="banner">
        <div class="slider-wrapper">
            <div id="slidernopage" class="nivoSlider">
                <a href="#"><img src="assets/images/banner.jpg" alt="" /></a>
                <a href="#"><img src="assets/images/banner-2.jpg" alt="" /></a>
            </div>
        </div>
    </div>--%>
    <div class="wrap-section">
        <div class="container">
            <div class="wrapper-service">
                <div class="container-in">
                    <div class="row">
                        <asp:ListView ID="lstPackageService" runat="server" DataSourceID="odsPackageService"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="col-md-4">
                                    <div class="service-box">
                                        <h2 class='<%# "service-name text-uppercase service-title-" + Eval("ProductID") %>'>
                                            <span>
                                                <%# Eval("ProductName") %></span></h2>
                                        <div class="service-content">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                                        </div>
                                        <div class="service-price">
                                            <div class="price-left">
                                                <%# Eval("Description")%>
                                            </div>
                                            <div class="price-right">
                                                <strong>
                                                    <%# string.IsNullOrEmpty(Eval("OtherPrice").ToString()) ?(string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',')) :  Eval("OtherPrice") %></strong>
                                                <span>VND/tháng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsPackageService" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="2" Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="7" Name="CategoryID" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <div class="col-md-4">
                            <asp:ListView ID="lstVideo" runat="server" DataSourceID="odsVideo" EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="service-box">
                                        <h2 class="service-name text-uppercase service-title-3">
                                            <span>Video giới thiệu</span></h2>
                                        <div class="service-video">
                                            <div id="jwplayera">
                                            </div>
                                            <script type="text/javascript">
                                                $(document).ready(function () {
                                                    jwplayer('jwplayera').setup({
                                                        image: '<%# string.IsNullOrEmpty(Eval("ImagePath").ToString()) ? "" : "res/video/thumbs/" + Eval("ImagePath") %>',
                                                        file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>',
                                                        flashplayer: "assets/js/jwplayer.flash.swf",
                                                        width: '100%',
                                                        aspectratio: '16:9',
                                                        screencolor: 'FFFFFF',
                                                        backcolor: 'transparent',
                                                        wmode: 'transparent'
                                                    });
                                                    //jwplayer('jwplayer1').play();
                                                });
                                            </script>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsVideo" runat="server" SelectMethod="VideoSelectAll"
                                TypeName="TLLib.Video">
                                <SelectParameters>
                                    <asp:Parameter Name="Title" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="VideoCategoryID" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap-section">
        <div class="container">
            <div class="wrapper-package">
                <div class="container-in">
                    <%--<h2 class="title-package text-uppercase text-center">
                        Chuyên cung cấp các gói dịch vụ giúp việc</h2>--%>
                    <div class="package package-home">
                        <%--<div class="row">
                            <div class="col-md-4 col-xs-4">
                                <div class="box-package">
                                    <div class="package-in">
                                        <h2 class="package-name text-uppercase text-center">
                                            Giúp việc theo giờ</h2>
                                        <div class="package-img">
                                            <img src="assets/images/clock.png" alt="" /></div>
                                        <div class="package-content">
                                            Giúp việc làm việc theo khung giờ khách hàng đăng ký. Công việc như: dọn nhà, nấu
                                            ăn, rửa bát, chăm sóc trẻ. Nhân viên giúp việc làm xong không ở lại nhà khách hàng.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-4">
                                <div class="box-package">
                                    <div class="bg-home">
                                        <img src="assets/images/package-home.png" alt="" /></div>
                                    <div class="package-img">
                                        <img src="assets/images/package-img-1.jpg" alt="" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-4">
                                <div class="box-package">
                                    <div class="package-in">
                                        <h2 class="package-name text-uppercase text-center">
                                            Giúp việc văn phòng</h2>
                                        <div class="package-img">
                                            <img src="assets/images/office.png" alt="" /></div>
                                        <div class="package-content">
                                            Các công việc như: chăm sóc các khu ngoại cảnh, khu vực tầng hầm, tầng trệt, các
                                            phòng làm việc của tòa nhà, nhà vệ sinh.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-4">
                                <div class="box-package">
                                    <div class="package-icon">
                                    </div>
                                    <div class="package-img">
                                        <img src="assets/images/package-img-2.jpg" alt="" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-4">
                                <div class="box-package">
                                    <div class="package-in">
                                        <h2 class="package-name text-uppercase text-center">
                                            Giúp việc ở lại nhà</h2>
                                        <div class="package-img">
                                            <img src="assets/images/home.png" alt="" /></div>
                                        <div class="package-content">
                                            Người giúp việc ăn, ở tại nhà khách hàng 24/24. Công việc như: dọn nhà, nấu ăn,
                                            rửa bát, chăm sóc trẻ.
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-4">
                                <div class="box-package">
                                    <div class="package-icon">
                                    </div>
                                    <div class="package-img">
                                        <img src="assets/images/package-img-3.jpg" alt="" />
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                        <asp:ListView ID="lstServices" runat="server" DataSourceID="odsServices" EnableModelValidation="True">
                            <ItemTemplate>
                                <li>
                                    <div class="box-package">
                                        <div class="package-in">
                                            <h2 class="package-name text-uppercase text-center">
                                                <%# Eval("ProductName") %></h2>
                                            <div class="package-content">
                                                <%# Eval("Description") %>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-package">
                                        <div class="package-icon">
                                        </div>
                                        <div class="package-img">
                                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/package-img-2.jpg" %>'
                                                runat="server" />
                                        </div>
                                    </div>
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul class="list-package">
                                    <li runat="server" id="itemPlaceholder"></li>
                                </ul>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsServices" runat="server" SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                <asp:Parameter DefaultValue="3" Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="5" Name="CategoryID" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="clearfix"></div>
                    <h2 class="title-package text-uppercase text-center">
                        Quy trình</h2>
                </div>
            </div>
        </div>
        <div class="wrapper-dv container">
            <asp:ListView ID="lstProcess" runat="server" DataSourceID="odsProcess" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="box-dv">
                        <h2 class="title-dv text-uppercase">
                            <span>
                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/icon-dv-1.png" %>'
                                    runat="server" /></span><%# Eval("ProductName") %></h2>
                        <p>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label></p>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProcess" runat="server" SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="4" Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter DefaultValue="2" Name="CategoryID" Type="String" />
                    <asp:Parameter Name="ManufacturerID" Type="String" />
                    <asp:Parameter Name="OriginID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="InStock" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="IsBestSeller" Type="String" />
                    <asp:Parameter Name="IsSaleOff" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <div class="wrap-section">
        <div class="container-in">
            <div class="row">
                <div class="col-md-6">
                    <div class="head lineh">
                        <h2 class="title-2">
                            Tin tức</h2>
                        <div class="see-more">
                            <a href="meo-vat.aspx"><span>Xem thêm</span></a>
                        </div>
                    </div>
                    <div class="tabs-box">
                        <div class="section-box">
                            <asp:ListView ID="lstTipHot" runat="server" DataSourceID="odsTipHot" EnableModelValidation="True">
                                <ItemTemplate>
                                    <a class="section-img" href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-mi-" + Eval("ProductID") + ".aspx" %>'>
                                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/mv-img-1.jpg" %>'
                                            runat="server" /></a>
                                    <div class="section-content">
                                        <h5 class="section-name">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-mi-" + Eval("ProductID") + ".aspx" %>'>
                                                <%# Eval("ProductName") %></a></h5>
                                        <div class="description">
                                            <%# TLLib.Common.SplitSummary(Eval("Description").ToString(), 120)%>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsTipHot" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                    <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                    <asp:Parameter Name="OriginID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="InStock" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter Name="IsNew" Type="String" />
                                    <asp:Parameter Name="IsBestSeller" Type="String" />
                                    <asp:Parameter Name="IsSaleOff" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter Name="FromDate" Type="String" />
                                    <asp:Parameter Name="ToDate" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div class="tb-section">
                            <div class="row">
                                <asp:ListView ID="lstTip" runat="server" DataSourceID="odsTip" EnableModelValidation="True">
                                    <ItemTemplate>
                                        <div class="col-xs-4 element-item">
                                            <div class="tb-box">
                                                <a class="tb-img" href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-mi-" + Eval("ProductID") + ".aspx" %>'>
                                                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/mv-img-1.jpg" %>'
                                                        runat="server" /></a>
                                                <h2 class="tb-name">
                                                    <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-mi-" + Eval("ProductID") + ".aspx" %>'>
                                                        <%# Eval("ProductName") %></a>
                                                </h2>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <span runat="server" id="itemPlaceholder" />
                                    </LayoutTemplate>
                                </asp:ListView>
                                <asp:ObjectDataSource ID="odsTip" runat="server" SelectMethod="ProductSelectAll"
                                    TypeName="TLLib.Product">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="StartRowIndex" Type="String" />
                                        <asp:Parameter DefaultValue="4" Name="EndRowIndex" Type="String" />
                                        <asp:Parameter Name="Keyword" Type="String" />
                                        <asp:Parameter Name="ProductName" Type="String" />
                                        <asp:Parameter Name="Description" Type="String" />
                                        <asp:Parameter Name="PriceFrom" Type="String" />
                                        <asp:Parameter Name="PriceTo" Type="String" />
                                        <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
                                        <asp:Parameter Name="ManufacturerID" Type="String" />
                                        <asp:Parameter Name="OriginID" Type="String" />
                                        <asp:Parameter Name="Tag" Type="String" />
                                        <asp:Parameter Name="InStock" Type="String" />
                                        <asp:Parameter Name="IsHot" Type="String" />
                                        <asp:Parameter Name="IsNew" Type="String" />
                                        <asp:Parameter Name="IsBestSeller" Type="String" />
                                        <asp:Parameter Name="IsSaleOff" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                                        <asp:Parameter Name="FromDate" Type="String" />
                                        <asp:Parameter Name="ToDate" Type="String" />
                                        <asp:Parameter Name="Priority" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                    </SelectParameters>
                                </asp:ObjectDataSource>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="head lineh">
                        <h2 class="title-2">
                            Nhận xét khách hàng</h2>
                    </div>
                    <div class="tabs-box nx-customer">
                        <div class="slider-tree1">
                            <asp:ListView ID="lstCommentCustomer" runat="server" DataSourceID="odsCommentCustomer"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="customer-box">
                                        <asp:Label ID="hdnProductID" runat="server" Text='<%# Eval("ProductID") %>' Visible="False"></asp:Label>
                                        <asp:ListView ID="lstImageCustomer" runat="server" DataSourceID="odsImageCustomer"
                                            EnableModelValidation="True">
                                            <ItemTemplate>
                                                <li>
                                                    <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/customer-img-1.jpg" %>'
                                                        runat="server" /></li>
                                            </ItemTemplate>
                                            <LayoutTemplate>
                                                <ul class="list-img-customer">
                                                    <li runat="server" id="itemPlaceholder"></li>
                                                </ul>
                                            </LayoutTemplate>
                                        </asp:ListView>
                                        <asp:ObjectDataSource ID="odsImageCustomer" runat="server" SelectMethod="ProductImageSelectAll"
                                            TypeName="TLLib.ProductImage">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="hdnProductID" Name="ProductID" PropertyName="Text"
                                                    Type="String" />
                                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                                <asp:Parameter Name="Priority" Type="String" />
                                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>
                                        <div class="customer-content">
                                            <h2 class="customer-name">
                                                <%# Eval("ProductName") %></h2>
                                            <div class="customer-address">
                                                <%# Eval("Tag") %></div>
                                            <div class="description">
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Content") %>'></asp:Label></div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsCommentCustomer" runat="server" SelectMethod="ProductSelectAll"
                                TypeName="TLLib.Product">
                                <SelectParameters>
                                    <asp:Parameter Name="StartRowIndex" Type="String" />
                                    <asp:Parameter Name="EndRowIndex" Type="String" />
                                    <asp:Parameter Name="Keyword" Type="String" />
                                    <asp:Parameter Name="ProductName" Type="String" />
                                    <asp:Parameter Name="Description" Type="String" />
                                    <asp:Parameter Name="PriceFrom" Type="String" />
                                    <asp:Parameter Name="PriceTo" Type="String" />
                                    <asp:Parameter DefaultValue="6" Name="CategoryID" Type="String" />
                                    <asp:Parameter Name="ManufacturerID" Type="String" />
                                    <asp:Parameter Name="OriginID" Type="String" />
                                    <asp:Parameter Name="Tag" Type="String" />
                                    <asp:Parameter Name="InStock" Type="String" />
                                    <asp:Parameter Name="IsHot" Type="String" />
                                    <asp:Parameter Name="IsNew" Type="String" />
                                    <asp:Parameter Name="IsBestSeller" Type="String" />
                                    <asp:Parameter Name="IsSaleOff" Type="String" />
                                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                    <asp:Parameter Name="FromDate" Type="String" />
                                    <asp:Parameter Name="ToDate" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
