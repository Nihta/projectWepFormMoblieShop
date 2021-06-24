using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web.UI.WebControls;

namespace projectWepFormMoblieShop
{
    public partial class ProductEdit : System.Web.UI.Page
    {
        private string oldImage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ProductID"] == null)
            {
                Response.Redirect("~/403.aspx");
            }

            if (!this.IsPostBack)
            {
                GetDataForm();
                GetDataCategory();
                GetDataBrand();
            }
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

        private void GetDataForm()
        {
            string query = string.Format(@"
            select ProductName, ProductDesc, ProductPrice, BrandID, CategoryID, MainImage
            from tblProducts
            where ProductID = {0};
            ", Request.QueryString["ProductID"]);

            SqlDataReader res = SqlHelpers.ExecuteReader(query);
            if (res.HasRows)
            {
                res.Read();
                TextProductName.Text = res["ProductName"].ToString();
                TextProductPrice.Text = res["ProductPrice"].ToString();
                TextProductDesc.Text = res["ProductDesc"].ToString();
                string BrandID = res["BrandID"].ToString();
                string CategoryID = res["CategoryID"].ToString();
                this.oldImage = res["MainImage"].ToString();
                ddlBrand.SelectedValue = BrandID;
                ddlCategory.SelectedValue = CategoryID;
            }
        }

        private bool IsInvalid()
        {
            if (TextProductPrice.Text.Length == 0 || !TextProductPrice.Text.All(char.IsDigit))
            {
                return false;
            }

            return true;
        }

        private string GetUrlFile(FileUpload f)
        {
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

            return newPath;
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            if (IsInvalid())
            {
                string ProductName = TextProductName.Text;
                int ProductPrice = Convert.ToInt32(TextProductPrice.Text);
                string ProductDesc = TextProductDesc.Text;
                int BrandID = Convert.ToInt32(ddlBrand.SelectedValue.ToString());
                int CategoryID = Convert.ToInt32(ddlCategory.SelectedValue.ToString());
                string MainImage = GetUrlFile(FileUpload);
                if (MainImage == null || MainImage.Length == 0)
                {
                    MainImage = oldImage;
                }
                int ProductID = Convert.ToInt32(Request.QueryString["ProductID"].ToString());

                string query = string.Format(@"
                    update tblProducts
                    set ProductName = N'{0}', ProductDesc = N'{1}', ProductPrice = {2}, BrandID = {3}, CategoryID = {4}, MainImage = N'{5}'
                    where ProductID = {6};
                ", ProductName, ProductDesc, ProductPrice, BrandID, CategoryID, MainImage, ProductID);

                if (SqlHelpers.ExecuteNonQuery(query) == 1)
                {
                    Response.Redirect("~/ManageProduct.aspx");
                }
            }
        }
    }
}