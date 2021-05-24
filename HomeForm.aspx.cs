using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;

namespace Boca
{
    public partial class HomeForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         
            string selectImages = "select image from images";
           
          
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["menu"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand(selectImages, con);

                LiteralControl imageGallery = new LiteralControl();
                var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    var ctrl = new WebControl(HtmlTextWriterTag.Div);
                    ctrl.Attributes["class"] = "carousel-item";
                    ctrl.Attributes["data-bs-interval"] = "2000";
                    Image image = new Image();
                    image.Attributes["src"] = "./Boca Chica Bar _ cool newly renovated Spanish & Mediterranean inspired concept bar_files/" + reader["image"].ToString();
                    image.Attributes["alt"] = "food";
                    image.Attributes["class"] = "d-block w-100";
                    ctrl.Controls.Add(image);

                   
                  
                    AddingImage.Controls.Add(ctrl);
              
                }


                con.Close();
            }
            catch (Exception ex)
            {

               
            }

           
        }

    }
      
}