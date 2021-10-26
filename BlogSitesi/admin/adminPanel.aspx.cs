using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogSitesi.admin
{
    public partial class adminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            object kullanici = Session["KullaniciAd"];

            if (kullanici != null)
            {
                Label1.Text =  "Hoşgeldiniz sayın: "+kullanici.ToString();
            }
        }

    }
}