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
    public partial class duyuruGuncelle : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();

        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["duyuruID"];
            if (!Page.IsPostBack)
            {
                SqlCommand komut = new SqlCommand("select * from Duyuru where duyuruID='"+id+"'", cn.connect());
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    TextBox1.Text = dr["duyuruBaslik"].ToString();
                    ckeditor.Text = dr["duyuruIcerik"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Duyuru set duyuruBaslik='"+TextBox1.Text+"', duyuruIcerik='"+ckeditor.Text+"' where duyuruID='"+id+"'", cn.connect());
            komut2.ExecuteNonQuery();

            Response.Redirect("Duyurular.aspx");
        }
    }
}