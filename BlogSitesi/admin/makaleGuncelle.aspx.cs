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
    public partial class makaleGuncelle : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();

        string id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["makaleID"];


            if (!Page.IsPostBack)
            {
                SqlCommand komut = new SqlCommand("select * from Makale where makaleID='" + id + "'", cn.connect());
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    tbxMBaslik.Text = dr["makaleBaslik"].ToString();
                    tbxMOzet.Text = dr["makaleOzet"].ToString();
                    ckeditor.Text = dr["makaleIcerik"].ToString();
                    tbxMYorum.Text = dr["makaleYorumSayisi"].ToString();
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/admin/makale_resim/" + FileUpload1.FileName));
                SqlCommand m_guncelle = new SqlCommand("update Makale set makaleBaslik = '" + tbxMBaslik.Text + "', makaleOzet='" + tbxMOzet.Text + "', makaleIcerik='" + ckeditor.Text + "', makaleYorumSayisi='" + tbxMYorum.Text + "', makaleResim='/admin/makale_resim/" + FileUpload1.FileName + "' where makaleID='" + id + "'", cn.connect());
                m_guncelle.ExecuteNonQuery();
                Response.Redirect("Makaleler.aspx");
            }
            else
            {
                SqlCommand m_guncelle2 = new SqlCommand("update Makale set makaleBaslik = '" + tbxMBaslik.Text + "', makaleOzet='" + tbxMOzet.Text + "', makaleIcerik='" + ckeditor.Text + "', makaleYorumSayisi='" + tbxMYorum.Text+"' where makaleID='"+id+"' ", cn.connect());
                m_guncelle2.ExecuteNonQuery();
                Response.Redirect("Makaleler.aspx");
            }
        }
    }
}