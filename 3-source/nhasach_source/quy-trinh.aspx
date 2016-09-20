<%@ Page Title="" Language="C#" MasterPageFile="~/site-gv.master" AutoEventWireup="true"
    CodeFile="quy-trinh.aspx.cs" Inherits="quytrinh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="quytrinh container-in">
        <div class="main">
            <div class="main-gv-title">
                <h2>
                    quy trình</h2>
            </div>
            <div role="tabpanel">
                <!-- Nav tabs -->
                <asp:ListView ID="lstProcess" runat="server" DataSourceID="odsProcess" EnableModelValidation="True">
                    <ItemTemplate>
                        <li role="presentation"><a href='<%# "#tab-" +  Eval("ProductID") %>' role="tab"
                            data-toggle="tab">
                            <%# Eval("ProductName") %></a> </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul class="nav nav-tabs" role="tablist">
                            <li runat="server" id="itemPlaceholder"></li>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <!-- Tab panes -->
                <div class="tab-content">
                    <asp:ListView ID="lstListProcess" runat="server" DataSourceID="odsProcess" EnableModelValidation="True">
                        <ItemTemplate>
                            <div role="tabpanel" class="tab-pane" id='<%# "tab-" +  Eval("ProductID") %>'>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Content") %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsProcess" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
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
        <div class="aside">
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
