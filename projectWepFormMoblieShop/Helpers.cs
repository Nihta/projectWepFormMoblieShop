using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

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
    }

    class SqlHelpers
    {
        public static string connectString = @"Data Source=.\sqlexpress;Initial Catalog=dbBarberShopManager;Integrated Security=True";

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
}