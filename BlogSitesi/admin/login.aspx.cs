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
    public partial class login : System.Web.UI.Page
    {
      
        sqlBaglanti cn = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

         

            SqlCommand komut = new SqlCommand("select * from Yonetici where yoneticiKullanici='"+TextBox1.Text+"'and yoneticiSifre='"+TextBox2.Text+"'", cn.connect());
            SqlDataReader dr = komut.ExecuteReader();

            if (dr.Read())
            {
                Session["Admin"] = dr["yoneticiKullanici"];
                Response.Redirect("adminPanel.aspx");
            }
            else
            {
                lbl_info.Text = "Hatalı giriş yaptınız!!!";
            }
          
        }
    }
}