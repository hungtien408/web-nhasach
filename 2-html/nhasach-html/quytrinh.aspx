<%@ Page Title="" Language="C#" MasterPageFile="~/site-gv.master" AutoEventWireup="true" CodeFile="quytrinh.aspx.cs" Inherits="quytrinh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="quytrinh container">
        <div class="main">
            <div class="main-gv-title">
                <h2>quy trình</h2>
            </div>
            <div role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation">
                        <a href="#tuyendung" role="tab" data-toggle="tab">quy trình tuyển dụng</a>
                    </li>
                    <li role="presentation">
                        <a href="#daotao" role="tab" data-toggle="tab">quy trình đào tạo</a>
                    </li>
                    <li role="presentation">
                        <a href="#tuvan" role="tab" data-toggle="tab">quy trình tư vấn</a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane" id="tuyendung">
                        <h1>1. Nhận thông tin ứng viên</h1>
                        <p>- Ứng viên tự liên hệ ứng tuyển</p>                        <p>- Các đối tác Tuyển dụng chuyển lên</p>
                        <h1>2. Tiếp nhận hồ sơ ứng viên và phỏng vấn</h1>
                        <h2>2.1 Tiếp nhận đầy đủ hồ sơ</h2>                        <p>- Chứng minh thư</p>                        <p>- Giấy xác nhận dân sự</p>                        <p>- Hộ khẩu</p>
                        <h2>2.2 Phỏng vấn</h2>                        <p>- Xác định làm việc lâu dài</p>                        <p>- Nhân trắc học, thẳng thắn, thật thà, đủ sức khoẻ</p>
                        <h1>3. đào tạo</h1>
                        <h2>5 mô-đun:</h2>                        <p>- Giao tiếp và xử lý tình huống</p>                        <p>- Dọn dẹp</p>                        <p>- Sơ chế, nấu ăn</p>                        <p>- Phân loại, giặt là đồ</p>                        <p>- Chăm sóc em bé</p>
                        <h1>4. ký hợp đồng</h1>
                        <p>- Nhập thông tin ứng viên lên hệ thống</p>                        <p>- Sắp xếp lịch, theo dõi, đánh giá ứng viên</p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="daotao">
                        <h1>1. Nhận thông tin ứng viên</h1>
                        <p>- Ứng viên tự liên hệ ứng tuyển</p>                        <p>- Các đối tác Tuyển dụng chuyển lên</p>
                        <h1>2. Tiếp nhận hồ sơ ứng viên và phỏng vấn</h1>
                        <h2>2.1 Tiếp nhận đầy đủ hồ sơ</h2>                        <p>- Chứng minh thư</p>                        <p>- Giấy xác nhận dân sự</p>                        <p>- Hộ khẩu</p>
                        <h2>2.2 Phỏng vấn</h2>                        <p>- Xác định làm việc lâu dài</p>                        <p>- Nhân trắc học, thẳng thắn, thật thà, đủ sức khoẻ</p>
                        <h1>3. đào tạo</h1>
                        <h2>5 mô-đun:</h2>                        <p>- Giao tiếp và xử lý tình huống</p>                        <p>- Dọn dẹp</p>                        <p>- Sơ chế, nấu ăn</p>                        <p>- Phân loại, giặt là đồ</p>                        <p>- Chăm sóc em bé</p>
                        <h1>4. ký hợp đồng</h1>
                        <p>- Nhập thông tin ứng viên lên hệ thống</p>                        <p>- Sắp xếp lịch, theo dõi, đánh giá ứng viên</p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tuvan">
                        <h1>1. Nhận thông tin ứng viên</h1>
                        <p>- Ứng viên tự liên hệ ứng tuyển</p>                        <p>- Các đối tác Tuyển dụng chuyển lên</p>
                        <h1>2. Tiếp nhận hồ sơ ứng viên và phỏng vấn</h1>
                        <h2>2.1 Tiếp nhận đầy đủ hồ sơ</h2>                        <p>- Chứng minh thư</p>                        <p>- Giấy xác nhận dân sự</p>                        <p>- Hộ khẩu</p>
                        <h2>2.2 Phỏng vấn</h2>                        <p>- Xác định làm việc lâu dài</p>                        <p>- Nhân trắc học, thẳng thắn, thật thà, đủ sức khoẻ</p>
                        <h1>3. đào tạo</h1>
                        <h2>5 mô-đun:</h2>                        <p>- Giao tiếp và xử lý tình huống</p>                        <p>- Dọn dẹp</p>                        <p>- Sơ chế, nấu ăn</p>                        <p>- Phân loại, giặt là đồ</p>                        <p>- Chăm sóc em bé</p>
                        <h1>4. ký hợp đồng</h1>
                        <p>- Nhập thông tin ứng viên lên hệ thống</p>                        <p>- Sắp xếp lịch, theo dõi, đánh giá ứng viên</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="aside">
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
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphBottom" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphPopup" runat="Server">
</asp:Content>

