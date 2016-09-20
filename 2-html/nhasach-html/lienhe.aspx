<%@ Page Title="" Language="C#" MasterPageFile="~/site-gv.master" AutoEventWireup="true" CodeFile="lienhe.aspx.cs" Inherits="lienhe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="lienhe container">
            <div class="row wrap-contact">
            <div class="col-md-6">
                <div class="address-contact">
                    <h4 class="text-uppercase">CÔNG TY TNHH DỊCH VỤ NHÀ SẠCH NHÀ MÁT</h4>
                    <div class="wrap-node">Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi tin nhắn cho chúng tôi theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của quý khách.</div><br />
                    <p><span class="fa fa-map-marker"></span>111 Tên Lửa, P.Bình Trị Đông B, Q.Bình Tân, Tp.HCM</p>                    <p><span class="fa fa-phone"></span>0986 144 609</p>                    <p><span class="fa fa-envelope"></span><a href="mailto: sales@nhn.com.vn ">nsnm@gmail.com</a></p>
                    
                </div>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <h4 class="text-uppercase">vui lòng nhập nội dung</h4>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder="Họ tên"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBox3" CssClass="contact-textbox" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="TextBox4" CssClass="contact-textbox" runat="server" placeholder="Số điện thoại"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-input">
                            <asp:TextBox ID="TextBox2" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Nội dung tin nhắn"></asp:TextBox>
                        </div>
                    </div>
                    <div class="contact-w">
                        <div class="contact-btn">
                            <asp:button ID="Button1" CssClass="button-btn" runat="server" text="GỬI CÂU HỎI" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="mapshow"></div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" Runat="Server">
</asp:Content>

