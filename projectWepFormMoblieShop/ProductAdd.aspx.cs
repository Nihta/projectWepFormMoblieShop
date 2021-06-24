using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web.UI.WebControls;

namespace projectWepFormMoblieShop
{
    public partial class ProductAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetDataCategory();
            GetDataBrand();
        }


        private void GetDataCategory()
        {
            string query = @"select CategoryID, CategoryName from tblCategorys";
            SqlDataReader dataReader = SqlHelpers.ExecuteReader(query);

            DataTable dataTable = new DataTable();
            dataTable.Load(dataReader);

            ddlCategory.DataSource = dataTable;
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "CategoryID";
            ddlCategory.DataBind();
        }

        private void GetDataBrand()
        {
            string query = @"select BrandID, BrandName from tblBrands";
            SqlDataReader dataReader = SqlHelpers.ExecuteReader(query);

            DataTable dataTable = new DataTable();
            dataTable.Load(dataReader);

            ddlBrand.DataSource = dataTable;
            ddlBrand.DataTextField = "BrandName";
            ddlBrand.DataValueField = "BrandID";
            ddlBrand.DataBind();
        }

        private bool IsInvalid()
        {
            if (TextProductPrice.Text.Length == 0 || !TextProductPrice.Text.All(char.IsDigit))
            {
                return false;
            }

            return true;
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            if (IsInvalid())
            {

                string ProductName = TextProductName.Text;
                int ProductPrice = Convert.ToInt32(TextProductPrice.Text);
                string ProductDesc = TextProductDesc.Text;
                int BrandID = Convert.ToInt32(ddlBrand.SelectedValue.ToString());
                int CategoryID = Convert.ToInt32(ddlCategory.SelectedValue.ToString());

                FileUpload f = FileUpload;
                string path = Server.MapPath("~/Images/");
                string fn = f.FileName;
                string newPath = path + fn;
                while (File.Exists(newPath))
                {
                    string[] fileNameArr = fn.Split('.');
                    fileNameArr[0] += "(1)";
                    string newFileName = string.Join(".", fileNameArr);
                    fn = newFileName;
                    newPath = path + fn;
                }
                if (fn != "")
                {
                    f.PostedFile.SaveAs(newPath);
                }

                string MainImage = newPath;


                string query = string.Format(@"
                    insert into tblProducts ( ProductName, ProductDesc, ProductPrice, BrandID, CategoryID, MainImage)
                    values (N'{0}', N'{1}', {2}, {3}, {4}, N'{5}');
                ", ProductName, ProductDesc, ProductPrice, BrandID, CategoryID, MainImage);

                if (SqlHelpers.ExecuteNonQuery(query) == 1)
                {
                    Response.Redirect("~/ManageProduct.aspx");
                }
            }
        }
    }
}