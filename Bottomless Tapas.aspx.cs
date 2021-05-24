using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace Boca
{
    public partial class Bottomless_Tapas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insert = "insert into bookBottomlessTapas (firstName, lastName, phone, email, numOfGuest, message, date) values(@firstName,@lastName,@phone,@email,@numOfGuest,@message,@date)";

            
            try
            {
                if (firstName.Text.Length == 0 || lastName.Text.Length == 0 || numOfGuest.Text == "0" || date.Text == "" || numOfGuest.Text.Length == 0)
                {
                    MessageBox.Show("Please enter Your name, Number of Guest, Date, and Time", "Error occur", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["menu"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand(insert, con);
                    cmd.Parameters.AddWithValue("@firstName", firstName.Text);
                    cmd.Parameters.AddWithValue("@lastName", lastName.Text);
                    cmd.Parameters.AddWithValue("@phone", phone.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@numOfGuest", numOfGuest.Text);
                    cmd.Parameters.AddWithValue("@message", Message.Text);

                    cmd.Parameters.AddWithValue("@date", date.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    MessageBox.Show("", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
               
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Error occur", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }
    }
}