using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNewLetter_Click(object sender, EventArgs e)
    {
        if (txtNewLetter.Text != "")
        {
            //new TLLib.Newsletter().NewsletterInsert(txtNewLetter.Text.ToString().Trim());
            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã đăng ký nhận tin của White Palace !')});", true);
        }
        txtNewLetter.Text = "";
    }
}
