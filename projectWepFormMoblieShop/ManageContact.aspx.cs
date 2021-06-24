using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectWepFormMoblieShop
{
    public partial class ManageContact : System.Web.UI.Page
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
    }
}