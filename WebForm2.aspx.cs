using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternetBased
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
 String baglanti = "Data Source=TOSHIBA\\MSSQLSERVERELIF;Initial Catalog=AYBU;Integrated Security=True";
            SqlConnection baglan = new SqlConnection(baglanti);
            baglan.Open();
           String query = "Insert Into GuestUserData values(@User_ID,@Name,@Surname,@Email,@Password)";
            SqlCommand komut = new SqlCommand(query,baglan);

            komut.Parameters.AddWithValue("@User_ID", TextBox1.Text.Trim());
            komut.Parameters.AddWithValue("@Name", TextBox2.Text.Trim());
            komut.Parameters.AddWithValue("@Surname", TextBox3.Text.Trim());
            komut.Parameters.AddWithValue("@Email", TextBox4.Text.Trim());
            komut.Parameters.AddWithValue("@Password", TextBox5.Text.Trim());
            komut.ExecuteNonQuery();
            baglan.Close();
            }

        }


    }
}