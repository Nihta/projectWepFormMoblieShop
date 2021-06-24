using System;

namespace projectWepFormMoblieShop
{
    public partial class SiteAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                // Not Admin
                if (Session["UserRole"] == null || Session["UserRole"].ToString() != "0")
                {
                    Response.Redirect("~/403.aspx");
                }
            }
        }
    }
}