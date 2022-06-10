using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Rental_01.experiment
{
    public partial class date : System.Web.UI.Page
    {
        SqlConnection con;

        void connection()
        {
            string cn = ConfigurationManager.ConnectionStrings["rental"].ToString();
            con = new SqlConnection(cn);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnrent_Click(object sender, EventArgs e)
        {
            connection();
            con.Open();
            string str12 = "Select count(*) from booking where serviceid='" + txtsid.Text + "'";
            SqlCommand cmd12 = new SqlCommand(str12, con);
            int i = 0;
            i = Convert.ToInt16(cmd12.ExecuteScalar());

            if (i != null)
            {
                SqlDataReader reader1 = cmd12.ExecuteReader();

                while (reader1.Read())
                {

                }
            }
        }
    }
}