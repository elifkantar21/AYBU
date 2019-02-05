using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace InternetBased
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = Email.Text;
            string password = Password.Text;

            bool result = usercontrol(email, password);//kullanıcı bilgileri kontrol

            if (result)
            {
                Session.Add("username", email);
                Response.Redirect("YemekWebForm.aspx");
            }
            

        }

        protected bool usercontrol(string email,string password)
        {
            String baglanti = "Data Source=TOSHIBA\\MSSQLSERVERELIF;Initial Catalog=AYBU;Integrated Security=True";
            SqlConnection baglan = new SqlConnection(baglanti);
            baglan.Open();
            String query = "SELECT Password FROM GuestUserData where Email=" + "'" + email + "'";

            SqlCommand komut = new SqlCommand(query, baglan);
            // komut.Parameters.AddWithValue("@today", today);
            SqlDataReader reader = komut.ExecuteReader();//read the data that is coming from database
            if (reader.Read())//eğer reader bişeyler okuyabiliyorsa bugunun kaydı var demektir
            {

                string password_in_db = reader["Password"].ToString();//db içindeki password değerini al
                if (password_in_db.Equals(password))
                {
                    Label1.Text = password_in_db;//passwordalar eşleşiyor user girebilir.
                    return true;
                }
                else
                    Label1.Text = "yanlış parola";
                    return false;
            }
            else
            {
                Label1.Text = "Hatalı parola ya da şifre " +
                    "Lütfen tekrar deneyin ";
                return false;
            }
                
            
        }
    }
}