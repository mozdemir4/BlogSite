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
    public partial class kategoriDetay : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategoriID"];
            SqlCommand komut = new SqlCommand("select makaleID,Makale.makaleBaslik, Makale.makaleOzet, Makale.makaleOkunmaSayisi,makale.makaleYorumSayisi,Makale.makaleTarih, Kategori.kategoriResim, Kategori.kategoriID from Makale INNER JOIN Kategori ON Kategori.kategoriID = Makale.kategoriID where Kategori.kategoriID='"+id+"'", cn.connect());
            SqlDataReader dr = komut.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
    }
}