using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tbPassword_TextChanged(object sender, EventArgs e)
        {

        }
        protected void btnClicked(object sender, EventArgs e)
        {
            //Response.Write(tbUsername.Text);
            //Response.Write(tbPassword.Text);

            string username = tbUsername.Text;
            string password = tbPassword.Text;
            string role = rdlistOfRoles.SelectedValue;
            string query = "SELECT COUNT(*) FROM Student WHERE Username = @Username AND Password = @Password ";

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["UniDB"].ConnectionString;

            int userCount = 0;
            if (role == "student")
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Username", username);
                        cmd.Parameters.AddWithValue("@Password" , password);
                        conn.Open();
                        userCount = (int)cmd.ExecuteScalar();
                        conn.Close();
                    }
                }
            }
                if (userCount > 0)
                {
                    Response.Write("Success");
                }
                else
                {
                    Response.Write("Login failed. Please check your credentials.");
                }
            
        }
    }
}