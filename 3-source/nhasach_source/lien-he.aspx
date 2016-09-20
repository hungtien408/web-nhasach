<%@ Page Title="" Language="C#" MasterPageFile="~/site-gv.master" AutoEventWireup="true"
    CodeFile="lien-he.aspx.cs" Inherits="lienhe" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.40412.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2012.3.1016.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="lienhe container-in">
        <div class="row wrap-contact">
            <div class="col-md-6">
                <asp:ListView ID="lstInfo" runat="server" DataSourceID="odsInfo" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="address-contact">
                            <h4 class="text-uppercase">
                                <%# Eval("Tag") %></h4>
                            <div class="wrap-node">
                                Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi tin nhắn cho chúng tôi
                                theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của
                                quý khách.</div>
                            <br />
                            <p>
                                <span class="fa fa-map-marker"></span>
                                <%# Eval("MetaTittle") %></p>
                            <p>
                                <span class="fa fa-phone"></span>
                                <%# Eval("MetaDescription")%></p>
                            <p>
                                <span class="fa fa-envelope"></span><a href='<%# "mailto:" + Eval("ProductName") %>'>
                                    <%# Eval("ProductName")%></a></p>
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
            <div class="col-md-6">
                <div class="wrap-send">
                    <h4 class="text-uppercase">
                        vui lòng nhập nội dung</h4>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Họ tên" TargetControlID="txtFullName">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtFullName"
                                        ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="TextBox1" CssClass="contact-textbox" runat="server" placeholder="Địa chỉ"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Email" TargetControlID="txtEmail">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                        runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Email is error!"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                        ForeColor="Red"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                        ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Information required!"
                                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtPhone_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Điện thoại" TargetControlID="txtPhone">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtPhone" ErrorMessage="Information required!"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Nội dung tin nhắn" TargetControlID="txtNoiDung">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                                ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="contact-w">
                            <div class="contact-input">
                                <div class="wcodes">
                                    <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                        Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                    </asp:TextBoxWatermarkExtender>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="contact-w">
                            <div class="contact-input">
                                <div class="wcodes">
                                    <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="SendEmail"
                                        runat="server" ErrorMessage="+ Mã an toàn: không chính xác." ValidatedTextBoxID="txtVerifyCode"
                                        Display="Dynamic">
                                        <CaptchaImage Height="35" Width="135" RenderImageOnly="True" />
                                    </asp:RadCaptcha>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-btn">
                            <asp:Label runat="server" ID="lblMessage" ForeColor="red"></asp:Label>
                            <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="GỬI CÂU HỎI" ValidationGroup="SendEmail"
                                OnClick="btGui_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:ListView ID="lstInfoMap" runat="server" DataSourceID="odsInfo" EnableModelValidation="True">
            <ItemTemplate>
                <div id="mapshow">
                    <div class="map-wrap">
                        <%# Eval("Description") %>
                    </div>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>
