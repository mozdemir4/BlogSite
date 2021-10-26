using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BlogSitesi
{
    public class sqlBaglanti
    {
        public SqlConnection connect()
        {
            SqlConnection con = new SqlConnection(@"Data Source = DESKTOP-5TTFMHT; Initial Catalog = siteDB; Integrated Security = True");
            con.Open();
            SqlConnection.ClearPool(con);
            SqlConnection.ClearAllPools();

            return con;
        }
    }
}