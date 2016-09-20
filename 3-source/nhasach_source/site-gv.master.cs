using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class site_gv : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.Url.PathAndQuery.ToLower();

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";

            if (page.Contains("san-pham.aspx?ci=") || page.Contains("chi-tiet-san-pham.aspx?pi="))
                activePage = "san-pham.aspx";
            else if (page.Contains("chi-tiet-tin-tuc.aspx?id="))
                activePage = "tin-tuc.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;
        }
    }
    protected void btnNewLetter_Click(object sender, EventArgs e)
    {
        if (txtNewLetter.Text != "")
        {
            new TLLib.Newsletter().NewsletterInsert(txtNewLetter.Text.ToString().Trim());
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã đăng ký nhận tin của Nhà Sạch - Nhà Mát !')});", true);
        }
        txtNewLetter.Text = "";
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
    protected void btnGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string msg = "<h3>Nhà Sạch: CONTACT</h3><br/>";
            msg += "<b>Họ tên: </b>" + txtFullName.Text.Trim().ToString() + "<br />";
            msg += "<b>Số điện thoại: </b>" + txtPhone.Text.Trim().ToString() + "<br />";
            msg += "<b>Địa chỉ: </b>" + txtAddress.Text.Trim().ToString() + "<br />";
            Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", "cc@tranlegroup.com", "", "Contact Nhà Sạch", msg, true);

            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime",
                " $(document).ready(function () {alert('Chúc mừng bạn đã đăng ký thành công !');});",
                true);

            txtFullName.Text = "";
            txtPhone.Text = "";
            txtAddress.Text = "";

        }
    }
    protected void btnHuy_Click(object sender, EventArgs e)
    {
        txtFullName.Text = "";
        txtPhone.Text = "";
        txtAddress.Text = "";
    }
}
