using System;
using System.Web.UI;

namespace projectWepFormMoblieShop
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool IsInputInvalid()
        {
            string name = TxtName.Text;
            string email = TxtEmail.Text;
            string subject = TxtSubject.Text;
            string message = TxtMessage.Text;

            if (name.Length == 0)
            {
                LabelAlertMess.Text = "Name is require!";
                TxtName.Focus();
                return false;
            }

            if (email.Length == 0)
            {
                LabelAlertMess.Text = "Email is require!";
                TxtEmail.Focus();
                return false;
            }

            if (subject.Length == 0)
            {
                LabelAlertMess.Text = "Subject is require!";
                TxtSubject.Focus();
                return false;
            }

            if (message.Length == 0)
            {
                LabelAlertMess.Text = "Message is require!";
                TxtMessage.Focus();
                return false;
            }

            return true;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            if (IsInputInvalid())
            {
                string name = TxtName.Text;
                string email = TxtEmail.Text;
                string subject = TxtSubject.Text;
                string message = TxtMessage.Text;

                string query = string.Format(@"
                    insert into tblContactUs
                    (ContactName, ContactEmail, ContactSubject, ContactMessage)
                    values (N'{0}', N'{1}', N'{2}', N'{3}');
                ", name, email, subject, message);
                int res = SqlHelpers.ExecuteNonQuery(query);
                PanelInfo.Visible = true;
            }
            else
            {
                PanelAlert.Visible = true;
                PanelInfo.Visible = false;
            }
        }
    }
}