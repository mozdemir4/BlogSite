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
    public partial class kategoriGuncelle : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();

        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            id = Request.QueryString["kategoriID"];

            if (!Page.IsPostBack)
            {
                SqlCommand query = new SqlCommand("select * from Kategori where kategoriID='" + id + "'", cn.connect());
                SqlDataReader dr = query.ExecuteReader();

                while (dr.Read())
                {
                    tbxKAd.Text = dr["kategoriAd"].ToString();
                    tbxKSira.Text = dr["kategoriSira"].ToString();
                    tbxKAdet.Text = dr["kategoriAdet"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/admin/kategori_resim/" + FileUpload1.FileName));

                SqlCommand query2 = new SqlCommand("update Kategori set kategoriAd='"+tbxKAd.Text+"', kategoriSira='"+tbxKSira.Text+"', kategoriAdet='"+tbxKAdet.Text+"', kategoriResim='/admin/kategori_resim/"+FileUpload1.FileName+"' where kategoriID='"+id+"' ",cn.connect());
                query2.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
            }
            else
            {
                SqlCommand query2 = new SqlCommand("update Kategori set kategoriAd='" + tbxKAd.Text + "', kategoriSira='" + tbxKSira.Text + "', kategoriAdet='" + tbxKAdet.Text + "'where kategoriID='" + id + "' ", cn.connect());
                query2.ExecuteNonQuery();
                Response.Redirect("kategoriler.aspx");
            }
        }
    }
}