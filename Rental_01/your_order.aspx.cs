using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Rental_01
{
    public partial class your_order : System.Web.UI.Page
    {

        SqlConnection con;

        void connection()
        {
            string cn = ConfigurationManager.ConnectionStrings["rental"].ToString();
            con = new SqlConnection(cn);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                if (Page.IsPostBack == false)
                {
                    bindDataList();
                    
                }
            }
            else
            {
                Response.Redirect("Sign_In.aspx");
            }
        }

        void bindDataList()
        {
            if (Session["email"] != null)
            {

                PagedDataSource pds = new PagedDataSource();
                connection();
                con.Open();
                string uid=Session["id"].ToString();
                string str = "select s.sname, s.price , s.img1 ,p.paymentdate,p.amount from services s INNER JOIN payment p ON s.sid=p.serviceid and p.userid = " + uid + "";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
                pds.DataSource = ds.Tables[0].DefaultView;
                pds.AllowPaging = true;
                pds.PageSize = 9;
                DataList1.DataSource = pds;
                DataList1.DataBind();
                con.Close();
                Session["cid"] = null;
            }
            
        }

    }
}