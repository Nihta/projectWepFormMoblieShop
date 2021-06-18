using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectWepFormMoblieShop
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool isValid(string email, string userName, string passWord, string passRepeat)
        {
            LabelWarning.Text = "";

            if (Validation.IsTextInvalid(LabelWarning, userName, 5, 20, "User name"))
            {
                if (Validation.IsTextInvalid(LabelWarning, passWord, 3, 20, "Pass word"))
                {
                    if (passWord == passRepeat)
                    {
                        return true;
                    }
                    else
                    {
                        Helpers.RenderAlerts(Helpers.AlertType.warning, LabelWarning, $"Re-entered password does not match!");
                    }
                }
                else
                {
                    SetFocus(TextBoxPassWord);
                }
            }
            else
            {
                SetFocus(TextBoxUserName);
            }



            return false;
        }

        protected void BtnSignup_Click(object sender, EventArgs e)
        {
            string email = TextBoxEmail.Text;
            string userName = TextBoxUserName.Text;
            string passRepeat = TextBoxPassWordRepeat.Text;
            string passWord = TextBoxPassWord.Text;

            if (isValid(email, userName, passWord, passRepeat))
            {

                //if (UserHelpers.CheckUserNameExist(userName))
                //{
                //    Helpers.RenderAlerts(Helpers.AlertType.warning, LabelWarning, $"Tên đăng nhập đã được sử dụng!");
                //    SetFocus(TextBoxUserName);
                //}
                //else
                //{
                //    string passWordEncode = Helpers.EncodePassWord(passWord);
                //    UserHelpers.Add(fullName, userName, passWord);
                //}

                Helpers.RenderAlerts(Helpers.AlertType.success, LabelWarning, $"Sign Up Success!");
            }
        }
    }
}