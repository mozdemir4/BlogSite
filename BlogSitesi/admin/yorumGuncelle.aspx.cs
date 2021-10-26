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
    public partial class yorumGuncelle : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();
        string yorum_id = "";
        string yorum_ID = "";
        string makale_ID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                yorum_id = Request.QueryString["yorumID"];
                SqlCommand komut = new SqlCommand("select * from Yorum where yorumID='"+yorum_id+"'  ", cn.connect());
                SqlDataReader dr = komut.ExecuteReader();

                while (dr.Read())
                {
                    tbxAd.Text = dr["yorumAdSoyad"].ToString();
                    tbxIcerik.Text = dr["yorumIcerik"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            makale_ID = Request.QueryString["makaleID"];
            yorum_ID = Request.QueryString["yorumID"];
           

            if(CheckBox1.Checked == true)
            {
                // yorum onaylama işlemi
                SqlCommand yorum_onay = new SqlCommand("Update Yorum set yorumAdSoyad='" + tbxAd.Text + "', yorumIcerik='" + tbxIcerik.Text + "', yorumOnay='" + CheckBox1.Checked + "' where yorumID='" + yorum_ID + "'", cn.connect());
                yorum_onay.ExecuteNonQuery();

                //onaylanan yorumların, okunma sayısını arttırma
                SqlCommand query = new SqlCommand("update Makale SET makaleYorumSayisi+=1  where makaleID='" + makale_ID + "'", cn.connect());
                query.ExecuteNonQuery();
                Response.Redirect("yorumlar.aspx");
            }
          

          
        }
    }
}