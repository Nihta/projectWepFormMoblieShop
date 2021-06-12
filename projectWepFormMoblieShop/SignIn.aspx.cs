using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectWepFormMoblieShop
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            Session["UserName"] = null;
            Session["FullName"] = null;
            Session["Role"] = null;
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string userName = TextBoxUserName.Text;
            string passWord = TextBoxPassWord.Text;
            string passWordEncode = Helpers.encodePassWord(passWord);

            string query = $"select userId, fullName, email, userName, role from tblUser where userName = '{userName}' and passWord = '{passWordEncode}'";
            var dataReader = SqlHelpers.ExecuteReader(query);

            if (dataReader.HasRows)
            {
                dataReader.Read();
                //Session["UserID"] = dataReader["userId"];
                //Session["UserName"] = dataReader["userName"];
                //Session["FullName"] = dataReader["fullName"];
                //Session["Role"] = dataReader["role"];
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                SetFocus(TextBoxPassWord);
                Helpers.RenderAlerts(Helpers.AlertType.danger, LabelWarning, "Tên tài khoản hoặc mật khẩu không chính xác!");
            }
        }
    }
}