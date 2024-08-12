using System;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Student_Management
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                // Initially display fields based on the selected role
                ShowHideFields();
            }
        }

        protected void btnClicked(object sender, EventArgs e)
        {
            Response.Write(tbName.Text + "<br/>");
            Response.Write(tbEmail.Text.ToString() + "<br/>");
            Response.Write(tbDob.Text.ToString() + "<br/>");
            Response.Write(tbSemester.Text.ToString() + "<br/>");
            Response.Write(ddlBranches.SelectedItem.Value + "<br/>");

            string name = tbName.Text;
            string email = tbEmail.Text;
            string branch = ddlBranches.SelectedItem.Value;
            DateTime dob = DateTime.Parse(tbDob.Text);
            int semester = int.Parse(tbSemester.Text);
            string username = tbUsername.Text;
            string password = tbPassword.Text;

            string connectionString = WebConfigurationManager.ConnectionStrings["UniDB"].ConnectionString;
            string query = "INSERT INTO Student (Name, Email, Branch, DOB, Semester, Username, Password) VALUES (@Name, @Email, @Branch, @DateOfBirth, @Semester, @Username, @Password)";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters to prevent SQL injection
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Branch", branch);
                    cmd.Parameters.AddWithValue("@DateOfBirth", dob);
                    cmd.Parameters.AddWithValue("@Semester", semester);
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);

                    // Open connection and execute query
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }

        protected void rdlistOfRoles_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Display fields based on the selected role
            ShowHideFields();
        }

        private void ShowHideFields()
        {
            string selectedRole = rdlistOfRoles.SelectedValue;

            // Display fields based on the selected role
            if (selectedRole == "student")
            {
                studentFields.Visible = true;
                professorField.Visible = false;
            }
            else if (selectedRole == "professor")
            {
                studentFields.Visible = false;
                professorField.Visible = true;
            }
            else if (selectedRole == "admin")
            {
                studentFields.Visible = false;
                professorField.Visible = false;
            }
        }

        protected void LoginBtnClicked(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }
    }
}
