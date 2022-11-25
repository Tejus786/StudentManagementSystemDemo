using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistationApp
{
    public partial class UpdateStudents : Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-P4T65D21\SQLEXPRESS;Initial Catalog=StudentDB;Integrated Security=True");
        int student_id = 0;
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

            }

            student_id = x;
            ErrorBox.Text = "";

            con.Open();
            String show_student = "select * from studentDetails where ID=  '" + int.Parse(StudentID.Text) + "'";
            SqlCommand cmd = new SqlCommand(show_student, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {

                NameBox.Text = reader["StudentName"].ToString();
                PhoneBox.Text = reader["Phone"].ToString();
                BranchBox.Text = reader["Branch"].ToString();
                EmailBox.Text = reader["Email"].ToString();
            }

            if (!reader.HasRows)
            {
                NameBox.Text = "";
                PhoneBox.Text = "";
                EmailBox.Text = "";
                BranchBox.Text = "";

                ErrorBox.Text = "Not Found";
                ErrorBox.ForeColor = Color.Red;
            }

            con.Close();


        }

        protected void DeleteStudent(object sender, EventArgs e)
        {

            con.Open();
            string delete = "DELETE FROM studentDetails WHERE ID= '" + StudentID.Text + "'";
            SqlCommand cmd = new SqlCommand(delete, con);
            int i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                NameBox.Text = "";
                PhoneBox.Text = "";
                EmailBox.Text = "";
                BranchBox.Text = "";
                UpdateMsg.Text = "Deleted";
                UpdateMsg.ForeColor = Color.Red;
            }
            else UpdateMsg.Text = "Invalid Operation!";
            con.Close();

        }

        protected void backbtnClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }
        protected void UpdateDetails(object sender, EventArgs e)
        {
            con.Open();
            string update = "update studentDetails Set StudentName='" + NameBox.Text + "', Branch= '" + BranchBox.Text + "',Phone='" + PhoneBox.Text + "', Email='" + EmailBox.Text + "' where ID= '" + StudentID.Text + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.Parameters.AddWithValue("@Name", NameBox.Text);
            cmd.Parameters.AddWithValue("@Branch", BranchBox.Text);
            cmd.Parameters.AddWithValue("@Phone", PhoneBox.Text);
            cmd.Parameters.AddWithValue("@Email", EmailBox.Text);
            cmd.Parameters.AddWithValue("ID", student_id);
            int check = cmd.ExecuteNonQuery();
            cmd.Dispose();
            if (check != 0)
            {
                UpdateMsg.Text = "Student Data update Successfully......!";
            }

        }
    }
}