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
    public partial class kategoriler : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();

        string id = "";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            id = Request.QueryString["kategoriID"];
            islem = Request.QueryString["islem"];


            if (!Page.IsPostBack)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
            }

            //kategorileri çekme
            SqlCommand query = new SqlCommand("select * from Kategori", cn.connect());
            SqlDataReader dr = query.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();



            //silme işlemi

            if (islem == "sil")
            {
                SqlCommand komut_sil = new SqlCommand("delete from Kategori where kategoriID='" + id + "'", cn.connect());
                komut_sil.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
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
                FileUpload1.SaveAs(Server.MapPath("/admin/kategori_resim/" + FileUpload1.FileName));

                SqlCommand komut = new SqlCommand("Insert into Kategori(kategoriAd,kategoriSira,kategoriResim) values ('" + tbxKAD.Text + "','" + tbxKSIRA.Text + "','/admin/kategori_resim/" + FileUpload1.FileName + "')", cn.connect());

                komut.ExecuteNonQuery();

                Response.Redirect("kategoriler.aspx");
            }
            else
            {
                Label1.Text = "Lütfen değerleri kontrol ediniz..!!!";
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
    }
}