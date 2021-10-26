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
    public partial class araDetay : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();

        string aranan_kelime = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            aranan_kelime = Request.QueryString["aranankelime"];

            if (!Page.IsPostBack)
            {
                SqlCommand komut_ara = new SqlCommand("select Makale.makaleID,Makale.makaleBaslik, Makale.makaleOzet, Makale.makaleOkunmaSayisi,makale.makaleYorumSayisi,Makale.makaleTarih, Kategori.kategoriResim from Makale INNER JOIN Kategori ON Kategori.kategoriID = Makale.kategoriID where makaleBaslik like '%"+aranan_kelime+"%' OR makaleOzet like '%"+aranan_kelime+"%' OR makaleIcerik like '%"+aranan_kelime+"%'  ", cn.connect());
                SqlDataReader dr = komut_ara.ExecuteReader();
                dl_ara.DataSource = dr;
                dl_ara.DataBind();
            }
        }
    }
}