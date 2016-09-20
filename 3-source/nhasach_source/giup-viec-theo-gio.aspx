<%@ Page Title="" Language="C#" MasterPageFile="~/site-gv.master" AutoEventWireup="true"
    CodeFile="giup-viec-theo-gio.aspx.cs" Inherits="giupviec_theogio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:HiddenField ID="hdnServiceDetails" runat="server" />
    <a class="a-link-ser" href="<%= hdnServiceDetails.Value %>"></a>
    <div class="container">
        <div class="banner-gv">
            <asp:ListView ID="lstBanner" runat="server" DataSourceID="odsBanner" EnableModelValidation="True">
                <ItemTemplate>
                    <img id="Img1" alt='<%# Eval("FileName") %>' src='<%# !string.IsNullOrEmpty(Eval("FileName").ToString()) ? "~/res/advertisement/" + Eval("FileName") : "~/assets/images/banner-gv.png" %>'
                        runat="server" />
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsBanner" runat="server" SelectMethod="AdsBannerSelectAll1"
                TypeName="TLLib.AdsBanner">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="6" Name="AdsCategoryID" Type="String" />
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="si" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="Website" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <div id="hotline" class="desktop-show">
                <asp:ListView ID="lstInfo1" runat="server" DataSourceID="odsInfo" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="wrapper-hotline">
                            <h2 class="text-uppercase">
                                Liên hệ với chúng tôi</h2>
                            <p>
                                Nếu bạn muốn tìm người giúp việc <span>ngay trong ngày</span> hãy liên hệ ngay mới
                                chúng tôi.
                            </p>
                            <div class="phone">
                                <span class="text-uppercase">Đặt dịch vụ <strong>
                                    <%# Eval("MetaDescription")%></strong></span>
                            </div>
                            <div class="email">
                                <span class="text-uppercase">Email <strong><a href='<%# "mailto:" + Eval("ProductName") %>'>
                                    <%# Eval("ProductName")%></a></strong></span>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsInfo" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="9" Name="CategoryID" Type="String" />
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
        <div class="main-gv">
            <asp:ListView ID="lstServiceDetails" runat="server" DataSourceID="odsServiceDetails"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="main-gv-title">
                        <h2>
                            <%# Eval("ProductName") %></h2>
                    </div>
                    <div class="main-gv-content">
                        <div class="gv-left">
                            <h1>
                                Ưu điểm nổi bật</h1>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                        </div>
                        <div class="gv-center">
                            <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/img-1.jpg" %>'
                                runat="server" />
                        </div>
                        <div class="gv-right">
                            <h1>
                                danh sách gợi ý hôm nay</h1>
                            <asp:HiddenField ID="hdnProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                            <asp:ListView ID="lstListCustomer" runat="server" DataSourceID="odsListCustomer"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <li>
                                        <div class="img">
                                            <a href="javascript:void(0);">
                                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/gv-1.png" %>'
                                                    runat="server" /></a></div>
                                        <div class="tit">
                                            <a href="javascript:void(0);">
                                                <%# Eval("Title")%></a>
                                            <p>
                                                <%# Eval("Descripttion")%></p>
                                        </div>
                                    </li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul>
                                        <li runat="server" id="itemPlaceholder"></li>
                                    </ul>
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsListCustomer" runat="server" SelectMethod="ProductImageSelectAll"
                                TypeName="TLLib.ProductImage">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnProductID" Name="ProductID" PropertyName="Value"
                                        Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsServiceDetails" runat="server" SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="si" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="main-dv">
            <div class="main-gv-title">
                <h2>
                    quy trình cung cấp dịch vụ</h2>
                <p>
                    Chỉ với 4 bước đơn giản - Nhanh chóng - Thuận tiện - Chất lượng</p>
            </div>
            <div class="wrapper-dv">
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
