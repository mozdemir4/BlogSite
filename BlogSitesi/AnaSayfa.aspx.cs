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
    public partial class AnaSayfa : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("select Makale.makaleID,Makale.makaleBaslik,makale.makaleIcerik, Makale.makaleOzet, Makale.makaleOkunmaSayisi,makale.makaleYorumSayisi,Makale.makaleTarih, Kategori.kategoriResim from Makale INNER JOIN Kategori ON Kategori.kategoriID = Makale.kategoriID", cn.connect());

            SqlDataReader dr = komut.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();
           

       
        }
    }
}