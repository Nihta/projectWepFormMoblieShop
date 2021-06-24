using System;
using System.Data.SqlClient;

namespace projectWepFormMoblieShop
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
        }

        private void GetData()
        {
            //string id = Request.QueryString["ProductID"];
            string id = "1";
            string query = string.Format(@"
            select ProductID, ProductName, ProductDesc, ProductPrice, BrandName, CategoryName, MainImage
            from tblProducts
                     join tblCategorys tC on tblProducts.CategoryID = tC.CategoryID
                     join tblBrands t on tblProducts.BrandID = t.BrandID
            where ProductID = {0};
            ", id);

            SqlDataReader res = SqlHelpers.ExecuteReader(query);
            if (res.HasRows)
            {
                res.Read();
                LabelName.Text = res["ProductName"].ToString();
                LabelCate.Text = res["CategoryName"].ToString();
                LabelImage.Text = $"<img class='product-detail__img' src='{res["MainImage"].ToString().Substring(77)}' alt='*' />";
                LabelTotalAmount.Text = (Convert.ToInt32(res["ProductPrice"].ToString()) * 1).ToString();
                LabelDesc.Text = res["ProductDesc"].ToString();
                LabelBrand.Text = res["BrandName"].ToString();
                LabelCategory2.Text = res["CategoryName"].ToString();
            }
        }

        // Add to cart
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Cart.aspx");
        }
    }
}