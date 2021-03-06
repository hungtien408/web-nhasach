﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class lienhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Liên Hệ";
            var meta = new HtmlMeta() { Name = "description", Content = "Liên Hệ" };
            Header.Controls.Add(meta);
        }
    }
    private void sendEmail()
    {
        string msg = "<h3>Nhà Sạch: CONTACT</h3><br/>";
        msg += "<b>Họ tên: </b>" + txtFullName.Text.Trim().ToString() + "<br />";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Số điện thoại: </b>" + txtPhone.Text.Trim().ToString() + "<br />";
        msg += "<b>Nội dung: </b>" + txtNoiDung.Text.Trim().ToString();
        Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", "nhasachnhamat@gmail.com", "", "Contact Nhà Sạch", msg, true);
    }
    protected void btGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (RadCaptcha1.IsValid)
            {

                //send email         
                sendEmail();
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã liên lạc với chúng tôi. Thông báo của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!')});", true);
                //
                //Clear text
                //
                txtFullName.Text = "";
                txtEmail.Text = "";
                txtPhone.Text = "";
                txtNoiDung.Text = "";
            }
            else
            {
                lblMessage.Text = "Chuỗi xác nhận chưa đúng !";
            }
        }
    }
}