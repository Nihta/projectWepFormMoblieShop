using System;

namespace projectWepFormMoblieShop
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            Session["UserName"] = null;
            Session["UserFullName"] = null;
            Session["UserRole"] = null;
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string userName = TextBoxUserName.Text;
            string passWord = TextBoxPassWord.Text;
            string passWordEncode = Helpers.encodePassWord(passWord);

            string query = string.Format(@"
                select UserID, UserName, UserEmail, UserRole, UsePhone, UserFullName
                from tblUsers
                where UserName = N'{0}' and UserPassWord = N'{1}';
            ", userName, passWordEncode);
            var dataReader = SqlHelpers.ExecuteReader(query);

            if (dataReader.HasRows)
            {
                dataReader.Read();
                Session["UserID"] = dataReader["UserID"];
                Session["UserName"] = dataReader["UserName"];
                Session["UserFullName"] = dataReader["UserFullName"];
                Session["UserRole"] = dataReader["UserRole"];

                if (Session["UserRole"].ToString() != "0")
                {
                    Response.Redirect("~/Default.aspx");
                } else
                {
                    // Admin
                    Response.Redirect("~/Brand.aspx");
                }
            }
            else
            {
                SetFocus(TextBoxPassWord);
                Helpers.RenderAlerts(Helpers.AlertType.danger, LabelWarning, "User name or password is incorrect!");
            }
        }
    }
}