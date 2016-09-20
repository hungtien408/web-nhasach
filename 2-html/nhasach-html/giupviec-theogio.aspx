<%@ Page Title="" Language="C#" MasterPageFile="~/site-gv.master" AutoEventWireup="true" CodeFile="giupviec-theogio.aspx.cs" Inherits="giupviec_theogio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="banner-gv">
            <img src="assets/images/banner-gv.png" alt="" />
            <div id="hotline" class="desktop-show">
                <div class="wrapper-hotline">
                    <h2 class="text-uppercase">Liên hệ với chúng tôi</h2>
                    <p>
                        Nếu bạn muốn tìm người giúp việc <span>ngay trong ngày</span> hãy liên hệ ngay mới
                                chúng tôi.
                    </p>
                    <div class="phone">
                        <span class="text-uppercase">Đặt dịch vụ <strong>0986 144 609</strong></span>
                    </div>
                    <div class="email">
                        <span class="text-uppercase">Email <strong><a href="mailTo:nsnm@gmail.com">nsnm@gmail.com</a></strong></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-gv">
            <div class="main-gv-title">
                <h2>giúp việc theo giờ</h2>
                <p>Xu hướng mới cho các gia đình hiện đại</p>
            </div>
            <div class="main-gv-content">
                <div class="gv-left">
                    <h1>Ưu điểm nổi bật</h1>
                    <ul>
                        <li>Không tốn chi phí ăn ở, đi lại, thưởng Tết cho người giúp việc. Tiết kiệm trung bình 3 triệu/tháng.</li>
                        <li>Không ảnh hưởng sinh hoạt gia đình.</li>
                        <li>Em bé không bị ảnh hưởng bởi giọng nói, thói quen sinh hoạt của người giúp việc.</li>
                        <li>Không phụ thuộc vào 1 người giúp việc duy nhất.</li>
                        <li>Người giúp việc do Công ty quản lý, đầy đủ hồ sơ.</li>
                    </ul>
                </div>
                <div class="gv-center">
                    <img src="assets/images/gv-center.png" alt="" />
                </div>
                <div class="gv-right">
                    <h1>danh sách gợi ý hôm nay</h1>
                    <ul>
                        <li>
                            <div class="img">
                                <a href="#"><img src="assets/images/gv-1.png" alt="" /></a></div>
                            <div class="tit">
                                <a href="#">Vũ Thị Thơm</a>
                                <p>48 tuổi - TP.HCM</p>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a href="#"><img src="assets/images/gv-1.png" alt="" /></a></div>
                            <div class="tit">
                                <a href="#">Vũ Thị Thơm</a>
                                <p>48 tuổi - TP.HCM</p>
                            </div>
                        </li>
                        <li>
                            <div class="img">
                                <a href="#"><img src="assets/images/gv-1.png" alt="" /></a></div>
                            <div class="tit">
                                <a href="#">Vũ Thị Thơm</a>
                                <p>48 tuổi - TP.HCM</p>
                            </div>
                        </li>
                    </ul>
                    <div class="btn-gv">
                        <a href="#">
                            Danh sách
                            <span>người giúp việc</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-dv">
            <div class="main-gv-title">
                <h2>quy trình cung cấp dịch vụ</h2>
                <p>Chỉ với 4 bước đơn giản - Nhanh chóng - Thuận tiện - Chất lượng</p>
            </div>
            <div class="wrapper-dv">
                <div class="box-dv">
                    <h2 class="title-dv text-uppercase">
                        <span>
                            <img src="assets/images/icon-dv-1.png" alt="" /></span>Đăng ký dịch vụ</h2>
                    <ul class="list-dv">
                        <li><a href="#">Để lại thông tin đăng ký, yêu cầu dịch vụ.</a></li>
                        <li><a href="#">Đọc điều kiện và điều khoản sử dụng dịch vụ.</a></li>
                    </ul>
                </div>
                <div class="box-dv">
                    <h2 class="title-dv text-uppercase">
                        <span>
                            <img src="assets/images/icon-dv-2.png" alt="" /></span>Xác nhận Điều kiện sử
                        dụng & Thanh toán</h2>
                    <ul class="list-dv">
                        <li><a href="#">Xác nhận Phiếu đăng ký.</a></li>
                        <li><a href="#">Các phương thức thanh toán.</a></li>
                    </ul>
                </div>
                <div class="box-dv">
                    <h2 class="title-dv text-uppercase">
                        <span>
                            <img src="assets/images/icon-dv-3.png" alt="" /></span>dịch vụ dùng thử</h2>
                    <ul class="list-dv">
                        <li><a href="#">Đọc lưu ý quan trọng trước khi sử dụng dịch vụ.</a></li>
                        <li><a href="#">Phản hồi dịch vụ sau khi dùng.</a></li>
                    </ul>
                </div>
                <div class="box-dv">
                    <h2 class="title-dv text-uppercase">
                        <span>
                            <img src="assets/images/icon-dv-4.png" alt="" /></span>sử dụng định kỳ</h2>
                    <ul class="list-dv">
                        <li><a href="#">Ký hợp đồng sử dụng định kỳ.</a></li>
                        <li><a href="#">Mua combo nhiều buổi để hưởng ưu đãi.</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>

