using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Rental_01.Admin
{
    public partial class viewusers : System.Web.UI.Page
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
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rw = Convert.ToInt32(e.CommandArgument);
            string s = GridView1.Rows[rw].Cells[0].Text;

            if (e.CommandName == "block")
            {
                Session["id"] = s;
                connection();
                con.Open();
                string str = "update registration  SET status='Blocked' where  id= '" + Session["id"].ToString()+  "'";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('User Blocked Successfully')</script>");
                              Response.Redirect("viewusers.aspx");
            }
            if (e.CommandName == "unblock")
            {

                Session["id"] = s;
                con.Open();
                string str1 = "update registration  SET status='Unblocked' where  id= '" + Session["id"].ToString() + "'";
                SqlCommand cmd1 = new SqlCommand(str1, con);
                cmd1.ExecuteNonQuery();
                con.Close();

                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('User UnBlocked Successfully')</script>");
                           Response.Redirect("viewusers.aspx");
            }
        }
        
    }
}