using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Nhà Sạch - Nhà Mát";
            //var meta = new HtmlMeta() { Name = "description", Content = "Nhà Sạch - Nhà Mát" };
            var meta = new HtmlMeta() { Name = "description", Content = "Giúp việc theo giờ, dịch vụ giúp việc nhà theo giờ, tạp vụ văn phòng, giúp việc nhà ở lại" };
            Header.Controls.Add(meta);
        }
    }
    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}