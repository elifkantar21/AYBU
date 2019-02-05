using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Globalization;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using HtmlAgilityPack;
using System.Net;

using System.Text;
using System.IO;
namespace InternetBased
{



    public static class MessageBox
    {
        public static void Show(this Page Page, String Message)
        {
            Page.ClientScript.RegisterStartupScript(
               Page.GetType(),
               "MessageBox",
               "<script language='javascript'>alert('" + Message + "');</script>"
            );
        }
    }
    public partial class YemekWebForm : System.Web.UI.Page
    {
        public String html;
        public Uri url;

        static int like = 0;
        static int unlike = 0;
        static bool flag = true; // Her kullanıcnın bir rate hakkı var


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
                Response.Redirect("Login.aspx");//login yapmayıp url kısmına RatingPage.aspx yazarsa geri çıkar


            if (!IsPostBack)
            { //sayfayı ilk kez açıyorsan senden önceki beğenileri görüyorsun

                String today = DateTime.Now.ToString("dd.MM.yyyy");

                String baglanti = "Data Source=TOSHIBA\\MSSQLSERVERELIF;Initial Catalog=AYBU;Integrated Security=True";
                SqlConnection baglan = new SqlConnection(baglanti);
                baglan.Open();
                String query = "SELECT [Like],Unlike FROM Rating where [Datee]=" + "'" + today + "'";

                SqlCommand komut = new SqlCommand(query, baglan);
                // komut.Parameters.AddWithValue("@today", today);
                SqlDataReader reader = komut.ExecuteReader();//read the data that is coming from database
                if (reader.Read())//eğer reader bişeyler okuyabiliyorsa bugunun kaydı var demektir
                {

                    like = reader.GetInt32(0);// butona basınca artırmak üzere şimdiki sayıyı al 
                    unlike = reader.GetInt32(1);
                    reader.Close();
                    baglan.Close();

                }
                else//eğer dbde bugünün kaydı yoksa ekle
                {

                    query = " INSERT INTO Rating([Like], [Unlike], [Datee]) values(0, 0," + "'" + today + "')";

                    //query = "Insert into Rating ([Lİke],Unlike,Datee) values(0,0,'2.03.2015')";
                    baglan = new SqlConnection(baglanti);
                    baglan.Open();
                    komut = new SqlCommand(query, baglan);
                    komut.ExecuteNonQuery();
                    baglan.Close();

                }
            }
            // get_menu();
            show_current_rating();

        }

       
        public void YemekCek()
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpWebRequest istek = (HttpWebRequest)WebRequest.Create("https://aybu.edu.tr/sks/");
            HttpWebResponse cevap = (HttpWebResponse)istek.GetResponse();
            Encoding cevapkodlama = Encoding.GetEncoding(cevap.CharacterSet);
            StreamReader okuyucu = new StreamReader(cevap.GetResponseStream(), cevapkodlama);
            string html = okuyucu.ReadToEnd();
            HtmlDocument doc = new HtmlDocument();
            doc.LoadHtml(html);
            HtmlNodeCollection col = doc.DocumentNode.SelectNodes("//*[@id='main_wrapper']/table");
            foreach (HtmlNode items in col)
            {
                Response.Write(items.InnerHtml);
            }

            HtmlNodeCollection col0 = doc.DocumentNode.SelectNodes(" //*[@id='main_wrapper']/p[1]");
            HtmlNodeCollection col1 = doc.DocumentNode.SelectNodes("//*[@id='main_wrapper']/table");

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

       

        protected void show_current_rating()
        {
            Like.Text = like.ToString();
            Unlike.Text = unlike.ToString();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //Database connection
            if (flag)
            {
                String today = DateTime.Now.ToString("dd.MM.yyyy");

                String baglanti = "Data Source=TOSHIBA\\MSSQLSERVERELIF;Initial Catalog=AYBU;Integrated Security=True";
                SqlConnection baglan = new SqlConnection(baglanti);
                baglan.Open();
                like++;
                String query = " UPDATE Rating SET [Like]=" + like + "where [Datee]=" + "'" + today + "'";
                SqlCommand komut = new SqlCommand(query, baglan);

                komut.ExecuteNonQuery();
                baglan.Close();
                flag = false;
            }
            show_current_rating();

           


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //Database connection
            if (flag)
            {
                String today = DateTime.Now.ToString("dd.MM.yyyy");

                String baglanti = "Data Source=TOSHIBA\\MSSQLSERVERELIF;Initial Catalog=AYBU;Integrated Security=True";
                SqlConnection baglan = new SqlConnection(baglanti);
                baglan.Open();
                like++;
                String query = " UPDATE Rating SET [Like]=" + like + "where [Datee]=" + "'" + today + "'";
                SqlCommand komut = new SqlCommand(query, baglan);

                komut.ExecuteNonQuery();
                baglan.Close();
                flag = false;
            }
            show_current_rating();

        }
    }
}