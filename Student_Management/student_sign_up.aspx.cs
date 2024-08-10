using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClicked(object sender, EventArgs e)
        {
            Response.Write(tbName.Text);
            Response.Write(tbDob.Text.ToString());
            Response.Write(tbSemester.Text.ToString());
            Response.Write(ddlBranches.SelectedItem.Value);
        }
    }
}