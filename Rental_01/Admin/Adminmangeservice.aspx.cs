using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Rental_01.Admin
{
    public partial class Adminmangeservice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rw = Convert.ToInt32(e.CommandArgument);
            string s = GridView1.Rows[rw].Cells[0].Text;

            if (e.CommandName == "Select")
            {
                Session["sid"] = s;
                Response.Redirect("AdminViewService.aspx");
            }
            if (e.CommandName == "Edit")
            {
                Session["sid"] = s;
                Response.Redirect("AdminEditService.aspx");
            }
        }

       
      
        
    }
}