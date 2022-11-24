using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistationApp
{

    public partial class Contact : Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-P4T65D21\SQLEXPRESS;Initial Catalog=StudentDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RetrieveStudentDetails(object sender, EventArgs e)
        {
            int x = 0;
            if (!int.TryParse(StudentID.Text, out x))
            {
                StudentID.Text = "";
                ErrorBox.Text = "Invalid Input";
                ErrorBox.ForeColor = Color.Red;
                GridView1.DataSource = null;
                GridView1.DataBind();
                return;
            }

            ErrorBox.Text = "";

            con.Open();
            String show_student = "select * from studentDetails where ID=  '" + int.Parse(StudentID.Text) + "'";
            SqlCommand cmd = new SqlCommand(show_student, con);
            SqlDataReader reader = cmd.ExecuteReader();

            GridView1.DataSource = reader;
            GridView1.DataBind();

            if (!reader.HasRows)
            {
                ErrorBox.Text = "Not Found";
                ErrorBox.ForeColor = Color.Red;
            }

            con.Close();

        }
    }
}
