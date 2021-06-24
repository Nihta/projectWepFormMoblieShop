using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;

namespace projectWepFormMoblieShop
{
    public class Helpers
    {
        public static string encodeMD5(string input)
        {
            StringBuilder hash = new StringBuilder();
            MD5CryptoServiceProvider md5provider = new MD5CryptoServiceProvider();
            byte[] bytes = md5provider.ComputeHash(new UTF8Encoding().GetBytes(input));
            for (int i = 0; i < bytes.Length; i++)
            {
                hash.Append(bytes[i].ToString("x2"));
            }
            return hash.ToString();
        }

        public static string encodePassWord(string passWord)
        {
            return encodeMD5(encodeMD5(encodeMD5(passWord)));
        }

        public enum AlertType
        {
            primary,
            danger,
            warning,
            success,
            info,
        }

        public static void RenderAlerts(AlertType alertType, Label label, string message)
        {
            string alert = "";

            switch (alertType)
            {
                case AlertType.primary:
                    alert = "primary";
                    break;
                case AlertType.danger:
                    alert = "danger";
                    break;
                case AlertType.warning:
                    alert = "warning";
                    break;
                case AlertType.success:
                    alert = "success";
                    break;
                case AlertType.info:
                    alert = "info";
                    break;
                default:
                    alert = "primary";
                    break;
            }

            string html = $"<div class='alert alert-{alert}' role='alert'>{message}</div>";

            label.Text = html;
        }


        public static void ClearInput(params TextBox[] textBoxes)
        {
            foreach (TextBox tb in textBoxes)
            {
                tb.Text = "";
            }
        }
    }

    class SqlHelpers
    {
        public static string connectString = @"Data Source=.\sqlexpress;Initial Catalog=dbMoblieShop;Integrated Security=True";

        private SqlDataAdapter dataAdapter;
        private SqlCommandBuilder commandBuilder;

        public static int ExecuteNonQuery(string commandText, params SqlParameter[] parameters)
        {
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                using (SqlCommand cmd = new SqlCommand(commandText, conn))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddRange(parameters);

                    conn.Open();
                    int res = cmd.ExecuteNonQuery();
                    conn.Close();

                    return res;
                }
            }
        }

        public static object ExecuteScalar(string commandText, params SqlParameter[] parameters)
        {
            using (SqlConnection conn = new SqlConnection(connectString))
            {
                using (SqlCommand cmd = new SqlCommand(commandText, conn))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddRange(parameters);

                    conn.Open();
                    object res = cmd.ExecuteScalar();
                    conn.Close();

                    return res;
                }
            }
        }

        public static SqlDataReader ExecuteReader(string commandText, params SqlParameter[] parameters)
        {
            SqlConnection conn = new SqlConnection(connectString);

            using (SqlCommand cmd = new SqlCommand(commandText, conn))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddRange(parameters);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                return reader;
            }
        }

        public DataTable ExecuteQuery(string commandText, params SqlParameter[] parameters)
        {
            SqlConnection conn = new SqlConnection(connectString);

            using (SqlCommand cmd = new SqlCommand(commandText, conn))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddRange(parameters);

                DataTable dataTable = new DataTable();

                dataAdapter = new SqlDataAdapter();
                dataAdapter.SelectCommand = cmd;

                commandBuilder = new SqlCommandBuilder(dataAdapter);

                dataAdapter.Fill(dataTable);

                return dataTable;
            }
        }

        public void Update(DataTable dataTable)
        {
            commandBuilder.GetUpdateCommand();
            dataAdapter.Update(dataTable);
        }
    }

    class GridViewHelpers
    {
        public static BoundField CreateBoundField(string dataField, string headerText)
        {
            BoundField newField = new BoundField();
            newField.DataField = dataField;
            newField.HeaderText = headerText;
            return newField;
        }
    }

    public class Validation
    {
        public static bool IsNumeric(Label label, string text, string name)
        {
            if (!Regex.IsMatch(text, @"^\d+$"))
            {
                Helpers.RenderAlerts(Helpers.AlertType.warning, label, $"{name} is not is mumber!");
                return false;
            }

            return true;
        }


        public static bool IsTextInvalid(Label label, string text, int min, int max, string name, bool isRequire = true)
        {
            if (!isRequire && text.Length == 0)
            {
                return true;
            }

            if (text.Length == 0)
            {
                Helpers.RenderAlerts(Helpers.AlertType.warning, label, $"{name} is reuire!");
                return false;
            }

            if (text.Length < min)
            {
                Helpers.RenderAlerts(Helpers.AlertType.warning, label, $"{name} too short!");
                return false;
            }

            if (text.Length > max)
            {
                Helpers.RenderAlerts(Helpers.AlertType.warning, label, $"{name} too long!");
                return false;
            }

            return true;
        }


        public static bool IsPhoneInvalid(Label label, string text)
        {
            if (!Regex.IsMatch(text, @"^[0-9]*$"))
            {
                Helpers.RenderAlerts(Helpers.AlertType.warning, label, $"Số điện thoại không hợp lệ!\nSố điện thoại chỉ bao gồm các số 0->9");
                return false;
            }

            return true;
        }


        public static bool IsEmailInvalid(Label label, string text)
        {
            if (!Regex.IsMatch(text, @"^\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b$"))
            {
                Helpers.RenderAlerts(Helpers.AlertType.warning, label, $"Email không hợp lệ!");
                return false;
            }

            return true;
        }
    }

}