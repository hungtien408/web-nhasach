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
                        <div class="col-md-4">
                            <div class="service-box">
                                <h2 class="service-name text-uppercase service-title-1">
                                    <span>Gói dịch vụ nên chọn</span></h2>
                                <div class="service-content">
                                    Giúp việc làm việc theo khung giờ khách hàng đăng ký. Nhân viên giúp việc làm xong
                                    không ở lại nhà khách hàng.
                                </div>
                                <div class="service-price">
                                    <div class="price-left">
                                        <p>
                                            3 giờ/ngày</p>
                                        <p>
                                            4 buổi/tháng</p>
                                    </div>
                                    <div class="price-right">
                                        <strong>499.000</strong> <span>VND/tháng</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="service-box">
                                <h2 class="service-name text-uppercase service-title-2">
                                    <span>Gói dịch vụ trọn gói</span></h2>
                                <div class="service-content">
                                    Dọn nhà, nấu ăn, rửa bát, chăm sóc trẻ. Giúp việc làm việc theo khung giờ khách
                                    hàng đăng ký, không ở lại nhà khách hàng.
                                </div>
                                <div class="service-price">
                                    <div class="price-left">
                                        <p>
                                            3 giờ/ngày</p>
                                        <p>
                                            12 buổi/tháng</p>
                                    </div>
                                    <div class="price-right">
                                        <strong>1.499.000</strong> <span>VND/tháng</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="service-box">
                                <h2 class="service-name text-uppercase service-title-3">
                                    <span>Video giới thiệu</span></h2>
                                <div class="service-video">
                                    <div id="jwplayera">
                                    </div>
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            jwplayer('jwplayera').setup({
                                                //image: '<%# string.IsNullOrEmpty(Eval("ImagePath").ToString()) ? "" : "res/video/thumbs/" + Eval("ImagePath") %>',
                                                //file: '<%# string.IsNullOrEmpty(Eval("VideoPath").ToString()) ? Eval("GLobalEmbedScript") : "res/video/" + Eval("VideoPath") %>',
                                                image: 'assets/images/video.jpg',
                                                file: 'https://youtu.be/cSPCt0mV9gY',
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
                    <h2 class="title-package text-uppercase text-center">
                        Chuyên cung cấp các gói dịch vụ giúp việc</h2>
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
                        <ul class="list-package">
                            <li>
                                <div class="box-package">
                                    <div class="package-in">
                                        <h2 class="package-name text-uppercase text-center">
                                            Giúp việc theo giờ</h2>
                                        <div class="package-content">
                                            <img src="assets/images/clock.png" alt="" />
                                            Giúp việc làm việc theo khung giờ khách hàng đăng ký. Công việc như: dọn nhà, nấu
                                            ăn, rửa bát, chăm sóc trẻ. Nhân viên giúp việc làm xong không ở lại nhà khách hàng.
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="box-package">
                                    <div class="bg-home">
                                        <img src="assets/images/package-home.png" alt="" /></div>
                                    <div class="package-img">
                                        <img src="assets/images/package-img-1.jpg" alt="" />
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="box-package">
                                    <div class="package-in">
                                        <h2 class="package-name text-uppercase text-center">
                                            Giúp việc văn phòng</h2>
                                        <div class="package-content">
                                            <img src="assets/images/office.png" alt="" />
                                            Các công việc như: chăm sóc các khu ngoại cảnh, khu vực tầng hầm, tầng trệt, các
                                            phòng làm việc của tòa nhà, nhà vệ sinh.
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="box-package">
                                    <div class="package-icon">
                                    </div>
                                    <div class="package-img">
                                        <img src="assets/images/package-img-2.jpg" alt="" />
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="box-package">
                                    <div class="package-in">
                                        <h2 class="package-name text-uppercase text-center">
                                            Giúp việc ở lại nhà</h2>
                                        <div class="package-content">
                                            <img src="assets/images/home.png" alt="" />
                                            Người giúp việc ăn, ở tại nhà khách hàng 24/24. Công việc như: dọn nhà, nấu ăn,
                                            rửa bát, chăm sóc trẻ.
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="box-package">
                                    <div class="package-icon">
                                    </div>
                                    <div class="package-img">
                                        <img src="assets/images/package-img-3.jpg" alt="" />
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <h2 class="title-package text-uppercase text-center">
                        Quy trình</h2>
                </div>
            </div>
        </div>
        <div class="wrapper-dv container">
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
    <div class="wrap-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="head lineh">
                        <h2 class="title-2">
                            Mẹo vặt</h2>
                        <div class="see-more">
                            <a href="#"><span>Xem thêm</span></a>
                        </div>
                    </div>
                    <div class="tabs-box">
                        <div class="section-box">
                            <a class="section-img" href="#">
                                <img src="assets/images/mv-img-1.jpg" alt="" /></a>
                            <div class="section-content">
                                <h5 class="section-name">
                                    <a href="#">10 mẹo vặt xử lý quần áo giúp bạn tiết kiệm cả đống tiền.</a></h5>
                                <div class="description">
                                    Bạn sẽ làm gì khi chiếc áo mới mặc được vài lần bị ố vàng, hay chỉ vài bữa "thả
                                    mồm" - chiếc quần jeans mới mua bỗng hơi chật chút xíu? Bỏ đi ư? Không chứ! Như
                                    thế thật lãng phí quá mà!
                                </div>
                            </div>
                        </div>
                        <div class="tb-section">
                            <div class="row">
                                <div class="col-xs-4 element-item">
                                    <div class="tb-box">
                                        <a class="tb-img" href="#">
                                            <img src="assets/images/mv-img-2.jpg" alt="" /></a>
                                        <h2 class="tb-name">
                                            <a href="#">7 mẹo vặt làm bếp biết hay chưa thì cũng vẫn cần phải ôn.</a>
                                        </h2>
                                    </div>
                                </div>
                                <div class="col-xs-4 element-item">
                                    <div class="tb-box">
                                        <a class="tb-img" href="#">
                                            <img src="assets/images/mv-img-3.jpg" alt="" /></a>
                                        <h2 class="tb-name">
                                            <a href="#">2 điều "thần kỳ" mà baking soda có thể làm với đôi giày của bạn.</a>
                                        </h2>
                                    </div>
                                </div>
                                <div class="col-xs-4 element-item">
                                    <div class="tb-box">
                                        <a class="tb-img" href="#">
                                            <img src="assets/images/mv-img-4.jpg" alt="" /></a>
                                        <h2 class="tb-name">
                                            <a href="#">Tuyệt chiêu biến chun buộc tóc cũ giãn thành y như mới.</a>
                                        </h2>
                                    </div>
                                </div>
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
                            <div class="customer-box">
                                <ul class="list-img-customer">
                                    <li>
                                        <img src="assets/images/customer-img-1.jpg" alt="" /></li>
                                    <li>
                                        <img src="assets/images/customer-img-2.jpg" alt="" /></li>
                                    <li>
                                        <img src="assets/images/customer-img-3.jpg" alt="" /></li>
                                    <li>
                                        <img src="assets/images/customer-img-4.jpg" alt="" /></li>
                                    <li>
                                        <img src="assets/images/customer-img-5.jpg" alt="" /></li>
                                </ul>
                                <div class="customer-content">
                                    <h2 class="customer-name">
                                        Chị Đỗ Minh Diệp</h2>
                                    <div class="customer-address">
                                        Phố Giảng Võ, Cát Linh, Ba Đình, Hà Nội</div>
                                    <div class="description">
                                        Hôm vừa rồi mình chuyển nhà, mình thực sự lo lắng vì không có ai giúp dọn dẹp nhà
                                        cửa sắp xếp đồ đạc lại. Có nguời bạn giới thiệu mình đến với JupViec, rất cảm ơn
                                        các bạn đã đem đến cho chị em phụ nữ chúng mình một dịch vụ khá hữu ích, tiện lợi.
                                        Nhân viên rất nhiệt tình làm sạch sẽ, mình đã rất cảm ơn bạn nhân viên là có lòng
                                        mời bạn ở lại ăn cơm với gia đình, nhưng nhân viên từ chối vì đang có lịch nhà Khách
                                        hàng tiếp theo.</div>
                                </div>
                            </div>
                            <div class="customer-box">
                                <ul class="list-img-customer">
                                    <li>
                                        <img src="assets/images/customer-img-5.jpg" alt="" /></li>
                                    <li>
                                        <img src="assets/images/customer-img-4.jpg" alt="" /></li>
                                    <li>
                                        <img src="assets/images/customer-img-3.jpg" alt="" /></li>
                                    <li>
                                        <img src="assets/images/customer-img-2.jpg" alt="" /></li>
                                    <li>
                                        <img src="assets/images/customer-img-1.jpg" alt="" /></li>
                                </ul>
                                <div class="customer-content">
                                    <h2 class="customer-name">
                                        Chị Đỗ Minh Diệp</h2>
                                    <div class="customer-address">
                                        Phố Giảng Võ, Cát Linh, Ba Đình, Hà Nội</div>
                                    <div class="description">
                                        Hôm vừa rồi mình chuyển nhà, mình thực sự lo lắng vì không có ai giúp dọn dẹp nhà
                                        cửa sắp xếp đồ đạc lại. Có nguời bạn giới thiệu mình đến với JupViec, rất cảm ơn
                                        các bạn đã đem đến cho chị em phụ nữ chúng mình một dịch vụ khá hữu ích, tiện lợi.
                                        Nhân viên rất nhiệt tình làm sạch sẽ, mình đã rất cảm ơn bạn nhân viên là có lòng
                                        mời bạn ở lại ăn cơm với gia đình, nhưng nhân viên từ chối vì đang có lịch nhà Khách
                                        hàng tiếp theo.</div>
                                </div>
                            </div>
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
