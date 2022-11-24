using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.NetworkInformation;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace StudentRegistationApp
{
    public partial class About : Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void SubmitForm(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-P4T65D21\SQLEXPRESS;Initial Catalog=StudentDB;Integrated Security=True");
            con.Open();
            String insert_cmd = "insert into studentDetails values('" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(insert_cmd, con);
            String getStudentID = "SELECT MAX(id) FROM studentDetails";
            SqlCommand id = new SqlCommand(getStudentID, con);
            
            SqlDataReader writer = cmd.ExecuteReader();
            writer.Close();
            
            SqlDataReader reader = id.ExecuteReader();
            while (reader.Read())
            {
                StatusBox.Text = "Added Student ID: " + reader[0].ToString();

            }
        }

    }
}