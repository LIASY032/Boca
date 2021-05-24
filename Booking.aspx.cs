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
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTNreservation_Click(object sender, EventArgs e)
        {
            
            string insert = "insert into reservation (firstName, lastName, phone, email, numberOfGuest, message, date, time) values(@firstName,@lastName,@phone,@email,@numberOfGuest,@message,@date,@time)";
            
            string update = "update reservation set firstName = @firstName, lastName = @lastName, phone = @phone, email = @email, numberOfGuest =@numberOfGuest, message=@message, date=@date, time=@time where firstName=" + firstName.Text.ToString() + " and lastName=" + lastName.Text.ToString();

            string delete = "delete from reservation where firstName =@firstName AND lastName =@lastName";
            try
            {
                
                
                 SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["menu"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = null;
                  
                    if (Select1.SelectedIndex == 3)
                    {
                        if (firstName.Text.Length == 0 || lastName.Text.Length == 0)
                        {
                            MessageBox.Show("Please enter Your name if you want to delete your reservations", "Error occur", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                        cmd = new SqlCommand(delete, con);
                        cmd.Parameters.AddWithValue("@firstName", firstName.Text);
                        cmd.Parameters.AddWithValue("@lastName", lastName.Text);

                    }
                    else
                    {
                        if (firstName.Text.Length == 0 || lastName.Text.Length == 0 || numOfGuest.Text == "0" || date.Text == "" || time.Text == "" || numOfGuest.Text.Length == 0)
                        {
                            MessageBox.Show("Please enter Your name, Number of Guest, Date, and Time", "Error occur", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                        if (Select1.SelectedIndex == 2)
                        {
                            cmd = new SqlCommand(update, con);


                        }
                        else
                        {

                            cmd = new SqlCommand(insert, con);

                        }

                        cmd.Parameters.AddWithValue("@firstName", firstName.Text);
                        cmd.Parameters.AddWithValue("@lastName", lastName.Text);
                        cmd.Parameters.AddWithValue("@phone", phone.Text);
                        cmd.Parameters.AddWithValue("@email", email.Text);
                        cmd.Parameters.AddWithValue("@numberOfGuest", numOfGuest.Text);
                        cmd.Parameters.AddWithValue("@message", Message.Text);

                        cmd.Parameters.AddWithValue("@date", date.Text);
                        cmd.Parameters.AddWithValue("@time", time.Text);
                       
                    }
                    cmd.ExecuteNonQuery();
                    con.Close();
                MessageBox.Show("", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);





            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.ToString(), "Error occur", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}