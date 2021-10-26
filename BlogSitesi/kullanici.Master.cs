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
    public partial class kullanici : System.Web.UI.MasterPage
    {
        sqlBaglanti cn = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            //duyurular
            SqlCommand duyur_getir = new SqlCommand("select TOP 5 * from Duyuru Order by duyuruID desc", cn.connect());
            SqlDataReader dr_duyuru = duyur_getir.ExecuteReader();

            datalist_duyuru.DataSource = dr_duyuru;
            datalist_duyuru.DataBind();

            //kategoriler
            SqlCommand kategori_getir = new SqlCommand("select * from Kategori", cn.connect());
            SqlDataReader dr_kategori = kategori_getir.ExecuteReader();
            datalist_kategori.DataSource = dr_kategori;
            datalist_kategori.DataBind();


            //slider için
            SqlCommand komut = new SqlCommand("select * from Makale", cn.connect());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            Response.Redirect("araDetay.aspx?aranankelime="+tbxAra.Text);
        }
    }
}