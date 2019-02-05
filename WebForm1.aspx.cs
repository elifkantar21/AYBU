using System;

using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

using System.Data.SqlClient;
namespace InternetBased
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static String baglanti = "Data Source=TOSHIBA\\MSSQLSERVERELIF;Initial Catalog=AYBU;Integrated Security=True";
        SqlConnection baglan = new SqlConnection(baglanti);
        SqlCommand komut = new SqlCommand();
        SqlDataReader dr;
        protected void goster(String tablo) {

            komut.CommandText = "Select* from  GuestUserData";

            komut.Connection = baglan;
            baglan.Open();
            dr = komut.ExecuteReader();
           GridView1.DataSource = dr;
           GridView1.DataBind();
            baglan.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
          
            goster("GuestUserData");
        }
       

        }

       
    }
