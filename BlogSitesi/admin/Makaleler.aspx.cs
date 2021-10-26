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
    public partial class Makaleler : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();

        string m_id = "";
        string islem = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            m_id = Request.QueryString["makaleID"];
            islem = Request.QueryString["islem"];
            if (!Page.IsPostBack)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;

                //kategorileri getir
                SqlCommand query = new SqlCommand("select * from Kategori", cn.connect());
                SqlDataReader dr = query.ExecuteReader();

                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriID";

                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();

                //makaleleri getir
                SqlCommand query2 = new SqlCommand("select * from Makale", cn.connect());
                SqlDataReader dr2 = query2.ExecuteReader();

                DataList1.DataSource = dr2;
                DataList1.DataBind();
            }
            //makale silme işlemi
            if (islem == "sil")
            {
               
                SqlCommand m_sil = new SqlCommand("delete from Makale where makaleID='" + m_id + "'", cn.connect());
                m_sil.ExecuteNonQuery();
                //SqlCommand k_adet_g = new SqlCommand("update Kategori set kategoriAdet=kategoriAdet-1 where kategoriID='" + DropDownList1.SelectedValue + "'", cn.connect());
                //k_adet_g.ExecuteNonQuery();
               
            }
        }

       

        protected void btnAc_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnKapa_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/admin/makale_resim/" + FileUpload1.FileName));

                SqlCommand m_ekle = new SqlCommand("insert into Makale (makaleBaslik,makaleOzet,makaleIcerik,makaleResim,kategoriID) values ('" + tbxMBaslik.Text + "', '" + tbxMOzet.Text + "','" + ckeditor.Text + "','/admin/makale_resim/" + FileUpload1.FileName + "', '" + DropDownList1.SelectedValue + "')", cn.connect());
                m_ekle.ExecuteNonQuery();

                SqlCommand k_ekle = new SqlCommand("update Kategori set kategoriAdet=kategoriAdet+1 where kategoriID='"+DropDownList1.SelectedValue+"'", cn.connect());
                k_ekle.ExecuteNonQuery();

              
                Response.Redirect("makaleler.aspx");

            }
            else
            {
                Label1.Text = "Lütfen bir resim ekleyiniz!!!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void btnDosya_Click(object sender, EventArgs e)
        {
            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(Server.MapPath("/dosyalar/" + FileUpload2.FileName));
                Response.Redirect("Makaleler.aspx");
                
            }
            else
            {
                Label2.Text = "Lütfen bir dosya ekleyiniz!!";
            }
        }
    }
}