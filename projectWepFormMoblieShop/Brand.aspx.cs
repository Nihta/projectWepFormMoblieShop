using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectWepFormMoblieShop
{
    public partial class Brand : System.Web.UI.Page
    {
        private void Config()
        {
            gvBrands.AutoGenerateColumns = false;
            gvBrands.Columns.Add(GridViewHelpers.CreateBoundField("brandid", "ID"));
            gvBrands.Columns.Add(GridViewHelpers.CreateBoundField("brandname", "Brand"));
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //Config();
            }

            gvBrands.PageSize = Convert.ToInt32(DropDownListNumOfItemInPage.SelectedValue.ToString());
            //GetDataForGridView();
        }

        protected void link_Click(object sender, EventArgs e)
        {
            LinkButton linkbutton = (LinkButton)sender;  // get the link button which trigger the event
            GridViewRow row = (GridViewRow)linkbutton.NamingContainer; // get the GridViewRow that contains the linkbutton
            //TextBox1.Text = row.Cells[0].Text;  // get the first cell value of the row
            //                                    // if you want to get controls in templatefield , just use row.FindControl
            //Label3.Text = linkbutton.CommandArgument;
            ScriptManager.RegisterStartupScript(this, GetType(), "displayalertmessage", "$('#staticBackdrop').modal()", true);//show the modal
        }

        protected void GetDataForGridView()
        {
            string query = @"select brandid, brandname from tblBrand;";
            SqlDataReader dataReader = SqlHelpers.ExecuteReader(query);

            DataTable dataTable = new DataTable();
            dataTable.Load(dataReader);

            gvBrands.DataSource = dataTable;
            gvBrands.DataBind();
        }

        #region Pagination
        protected void PageDropDownList_SelectedIndexChanged(Object sender, EventArgs e)
        {
            GridViewRow pagerRow = gvBrands.BottomPagerRow;

            DropDownList pageList = (DropDownList)pagerRow.Cells[0].FindControl("PageDropDownList");

            gvBrands.PageIndex = pageList.SelectedIndex;
        }

        protected void CustomersGridView_DataBound(Object sender, EventArgs e)
        {
            GridViewRow pagerRow = gvBrands.BottomPagerRow;

            if (pagerRow == null)
            {
                return;
            }

            DropDownList pageList = (DropDownList)pagerRow.Cells[0].FindControl("PageDropDownList");
            Label pageLabel = (Label)pagerRow.Cells[0].FindControl("CurrentPageLabel");

            if (pageList != null)
            {
                for (int i = 0; i < gvBrands.PageCount; i++)
                {
                    int pageNumber = i + 1;
                    ListItem item = new ListItem(pageNumber.ToString());

                    if (i == gvBrands.PageIndex)
                    {
                        item.Selected = true;
                    }

                    pageList.Items.Add(item);
                }
            }

            if (pageLabel != null)
            {
                int currentPage = gvBrands.PageIndex + 1;
                pageLabel.Text = $"Page {currentPage} of {gvBrands.PageCount}";
            }

        }
        #endregion

        protected void gvBrands_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvBrands.PageIndex = e.NewPageIndex;
            GetDataForGridView();
        }

        #region
        protected void CustomersGridView_RowCreated(Object sender, GridViewRowEventArgs e)
        {

            // Use the RowType property to determine whether the 
            // row being created is the header row. 
            if (e.Row.RowType == DataControlRowType.Header)
            {
                // Call the GetSortColumnIndex helper method to determine
                // the index of the column being sorted.
                int sortColumnIndex = GetSortColumnIndex();

                if (sortColumnIndex != -1)
                {
                    // Call the AddSortImage helper method to add
                    // a sort direction image to the appropriate
                    // column header. 
                    AddSortImage(sortColumnIndex, e.Row);
                }
            }
        }

        // This is a helper method used to determine the index of the
        // column being sorted. If no column is being sorted, -1 is returned.
        protected int GetSortColumnIndex()
        {

            // Iterate through the Columns collection to determine the index
            // of the column being sorted.
            foreach (DataControlField field in gvBrands.Columns)
            {
                if (field.SortExpression == gvBrands.SortExpression)
                {
                    return gvBrands.Columns.IndexOf(field);
                }
            }

            return -1;
        }

        // This is a helper method used to add a sort direction
        // image to the header of the column being sorted.
        void AddSortImage(int columnIndex, GridViewRow headerRow)
        {

            // Create the sorting image based on the sort direction.
            Image sortImage = new Image();
            if (gvBrands.SortDirection == SortDirection.Ascending)
            {
                sortImage.ImageUrl = "https://datatables.net/media/images/sort_asc.png";
                sortImage.AlternateText = "Ascending Order";
            }
            else
            {
                sortImage.ImageUrl = "https://datatables.net/media/images/sort_desc.png";
                sortImage.AlternateText = "Descending Order";
            }

            // Add the image to the appropriate header cell.
            headerRow.Cells[columnIndex].Controls.Add(sortImage);

        }
        #endregion

        protected void DropDownListNumOfItemInPage_SelectedIndexChanged(object sender, EventArgs e)
        {
            gvBrands.PageSize = Convert.ToInt32(DropDownListNumOfItemInPage.SelectedValue.ToString());
        }


        #region Handle Form
        private bool IsInvalid()
        {
            if (TextBoxBrandName.Text.Length == 0)
            {
                Helpers.RenderAlerts(Helpers.AlertType.warning, LabelAlert, "Band name is empty!");
                return false;
            }

            return true;
        }
        #endregion

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            string brandName = TextBoxBrandName.Text;
            string brandDesc = TextBoxBrandDesc.Text;


            if (IsInvalid())
            {

                string query = string.Format(@"
                    insert into tblBrand (BrandName, Description)
                    values (N'{0}', N'{1}');",
                    brandName, brandDesc);

                if (SqlHelpers.ExecuteNonQuery(query) == 1)
                {
                    Helpers.ClearInput(TextBoxBrandName, TextBoxBrandDesc);
                    LabelAlert.Text = "";
                }

                gvBrands.DataBind();
            }
        }

        protected void CustomersSqlDataSource_Updating(object sender, SqlDataSourceCommandEventArgs e)
        {
            //e.Command.Parameters["@Name"].Value = ddlTests.
        }

        protected void gvBrands_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}