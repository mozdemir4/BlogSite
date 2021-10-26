using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BlogSitesi.admin
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();
        string yorum_id = "";
        string yontem = "";
        string onay = "";
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            yorum_id = Request.QueryString["yorumID"];
            yontem = Request.QueryString["yontem"];
            onay = Request.QueryString["onay"];
            makaleID = Request.QueryString["makaleID"];

            //onaysız yorumları listeleme
            SqlCommand yorum_list = new SqlCommand("SELECT yorumID,yorumResim, yorumAdSoyad, yorumEmail,yorumIcerik,yorumTarih, Makale.makaleBaslik, Makale.makaleID FROM Yorum INNER JOIN Makale ON Makale.makaleID = Yorum.makaleID where yorumOnay=0", cn.connect());
            SqlDataReader yorum_oku = yorum_list.ExecuteReader();

            DtYorum.DataSource = yorum_oku;
            DtYorum.DataBind();

            if (yontem == "sil")
            {
                //onaysız yorum silme
                SqlCommand yorum_sil = new SqlCommand("delete from Yorum where yorumID='" + yorum_id + "'", cn.connect());
                yorum_sil.ExecuteNonQuery();
                Response.Redirect("Yorumlar.aspx");
            }

            //onaylı yorumları listeleme
            SqlCommand yorum_onay_list = new SqlCommand("SELECT yorumID,yorumResim, yorumAdSoyad, yorumEmail,yorumIcerik,yorumTarih, Makale.makaleBaslik, Makale.makaleID FROM Yorum INNER JOIN Makale ON Makale.makaleID = Yorum.makaleID where yorumOnay=1", cn.connect());
            SqlDataReader dr = yorum_onay_list.ExecuteReader();

            //onaylı yorum silme
            if (onay == "sil")
            {
                SqlCommand yorum_onay_sil = new SqlCommand("Delete from Yorum where yorumID='" + yorum_id + "'", cn.connect());
                yorum_onay_sil.ExecuteNonQuery();


                SqlCommand yorum_sayi_guncelle = new SqlCommand("Update Makale Set makaleYorumSayisi-=1 where makaleID='"+makaleID+"'", cn.connect());
                yorum_sayi_guncelle.ExecuteNonQuery();
                Response.Redirect("Yorumlar.aspx");
            }
            DataList1.DataSource = dr;
            DataList1.DataBind();



        }
    }
}