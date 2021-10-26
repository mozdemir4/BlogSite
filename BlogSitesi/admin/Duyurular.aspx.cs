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
    public partial class Duyurular : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();

        string id = "";
        string eylem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session kontrolü
            if (Session["Admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            id = Request.QueryString["duyuruID"];
            eylem = Request.QueryString["eylem"];

            if (!Page.IsPostBack)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
            }

            //duyuru getir
            SqlCommand duyuru_getir = new SqlCommand("select * from Duyuru", cn.connect());
            SqlDataReader dr = duyuru_getir.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();

            //duyuru sil
            if (eylem == "sil")
            {
                SqlCommand duyuru_sil = new SqlCommand("delete Duyuru where duyuruID='"+id+"'", cn.connect());
                duyuru_sil.ExecuteNonQuery();

                Response.Redirect("Duyurular.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Duyuru (duyuruBaslik, duyuruIcerik, duyuruResim) values ('"+TextBox1.Text+"','"+ckeditor.Text+"','/admin/tema/duyuru.png')", cn.connect());
            komut.ExecuteNonQuery();

            Response.Redirect("Duyurular.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}