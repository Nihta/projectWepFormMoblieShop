using System;
using System.Web.UI.WebControls;

namespace projectWepFormMoblieShop
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvCategory.PageSize = Convert.ToInt32(ddlItemInPage.SelectedValue.ToString());
        }

        #region Pagination
        protected void PageDropDownList_SelectedIndexChanged(Object sender, EventArgs e)
        {
            GridViewRow pagerRow = gvCategory.BottomPagerRow;
            DropDownList pageList = (DropDownList)pagerRow.Cells[0].FindControl("PageDropDownList");
            gvCategory.PageIndex = pageList.SelectedIndex;
        }

        protected void GridView_DataBound(Object sender, EventArgs e)
        {
            GridViewRow pagerRow = gvCategory.BottomPagerRow;

            if (pagerRow == null)
            {
                return;
            }

            DropDownList pageList = (DropDownList)pagerRow.Cells[0].FindControl("PageDropDownList");
            Label pageLabel = (Label)pagerRow.Cells[0].FindControl("CurrentPageLabel");

            if (pageList != null)
            {
                for (int i = 0; i < gvCategory.PageCount; i++)
                {
                    int pageNumber = i + 1;
                    ListItem item = new ListItem(pageNumber.ToString());

                    if (i == gvCategory.PageIndex)
                    {
                        item.Selected = true;
                    }

                    pageList.Items.Add(item);
                }
            }

            if (pageLabel != null)
            {
                int currentPage = gvCategory.PageIndex + 1;
                pageLabel.Text = $"Showing page {currentPage} of {gvCategory.PageCount} pages";
            }

        }
        #endregion

        #region Handle Add
        private bool IsInvalid()
        {
            if (TxtUserName.Text.Length == 0)
            {
                PanelAlert.Visible = true;
                LabelAlertMess.Text = "User name is empty!";
                return false;
            }

            if (TxtUserPassWord.Text.Length == 0)
            {
                PanelAlert.Visible = true;
                LabelAlertMess.Text = "Passwords is empty!";
                return false;
            }

            return true;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            string UserName = TxtUserName.Text;
            string UserPassWord = Helpers.encodePassWord(TxtUserPassWord.Text);
            string UserFullName = TxtFullName.Text;
            int UserRole = Convert.ToInt32(ddlRole.SelectedValue.ToString());
            string UserEmail = TxtUserEmail.Text;
            string UsePhone = TxtUsePhone.Text;

            if (IsInvalid())
            {
                string query = string.Format(@"
                insert into tblUsers
                (UserName, UserPassWord, UserEmail, UserRole, UsePhone, UserFullName)
                values (N'{0}', N'{1}', N'{2}', {3}, '{4}', N'{5}');
                ", UserName, UserPassWord, UserEmail, UserRole, UsePhone, UserFullName);

                if (SqlHelpers.ExecuteNonQuery(query) == 1)
                {
                    gvCategory.DataBind();
                    Helpers.ClearInput(TxtUserName, TxtUserPassWord, TxtFullName, TxtUserEmail, TxtUsePhone);
                    PanelAlert.Visible = false;
                }
            }
        }
        #endregion
    }
}