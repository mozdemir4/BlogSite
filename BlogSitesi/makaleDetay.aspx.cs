using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace BlogSitesi
{
    public partial class makaleDetay : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();
        string makaleID = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //makale listeleme
                makaleID = Request.QueryString["makaleID"];
                SqlCommand komut = new SqlCommand("select  Makale.makaleID,Makale.makaleBaslik, Makale.makaleIcerik, Makale.makaleOkunmaSayisi,makale.makaleYorumSayisi,Makale.makaleTarih, Kategori.kategoriResim, Kategori.kategoriID from Makale INNER JOIN Kategori ON Kategori.kategoriID = Makale.kategoriID where Makale.makaleID='" + makaleID + "'", cn.connect());
                SqlDataReader dr = komut.ExecuteReader();

                DataList1.DataSource = dr;
                DataList1.DataBind();

                //makale okunma arttırma
                SqlCommand komut2 = new SqlCommand("update Makale set makaleOkunmaSayisi+=1 where makaleID='" + makaleID + "'", cn.connect());
                komut2.ExecuteNonQuery();

                //yorum getir
                SqlCommand onay_getir = new SqlCommand("Select * From Yorum Where makaleID='"+makaleID+"' and yorumOnay=1 ", cn.connect());
                SqlDataReader dr2 = onay_getir.ExecuteReader();

                DataList2.DataSource = dr2;
                DataList2.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["makaleID"];
            SqlCommand yorum_ekle = new SqlCommand("insert into Yorum(yorumAdSoyad,yorumEmail,yorumIcerik,yorumResim,makaleID) values('"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox1.Text+"','/admin/tema/unnamed.png','"+id+"')", cn.connect());
            yorum_ekle.ExecuteNonQuery();

            Label1.Text = "Yorumunuz alındı.";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}