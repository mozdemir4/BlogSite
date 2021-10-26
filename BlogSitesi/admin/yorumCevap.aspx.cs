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
    public partial class yorumCevap : System.Web.UI.Page
    {
        sqlBaglanti cn = new sqlBaglanti();
        string makale_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            makale_id = Request.QueryString["makaleID"];
            SqlCommand komut = new SqlCommand("Insert into Yorum(yorumAdSoyad,yorumIcerik,yorumResim, makaleID) values('"+TextBox1.Text+"','"+TextBox2.Text+"','/admin/tema/adming.png', '"+makale_id+"')", cn.connect());
            komut.ExecuteNonQuery();
            Response.Redirect("yorumCevap.aspx");
        }
    }
}