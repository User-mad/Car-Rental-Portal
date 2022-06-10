using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Rental_01
{
    public partial class shop : System.Web.UI.Page
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
                    catDatalistBind();
                    cityDatalistBind();
                }
            }
            else
            {
                Response.Redirect("Sign_In.aspx");
            }

        }
        void bindDataList()
        {
            if (Session["cid"] != null)
            {

                PagedDataSource pds = new PagedDataSource();
                connection();
                con.Open();
                string str = "select * from services where category='" + Session["cid"].ToString() + "'";
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
            else if (Session["cityid"] != null)
            {

                PagedDataSource pds = new PagedDataSource();
                connection();
                con.Open();
                string str = "select * from services where city='" + Session["cityid"].ToString() + "'";
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
                Session["cityid"] = null;
            }
            else
            {
                PagedDataSource pds = new PagedDataSource();
                connection();
                con.Open();
                string str = "select * from services";
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
            }
        }

        public void hi(object sender, DataListCommandEventArgs e)
        {

            if (e.CommandName == "detail")
            {
                int i = Convert.ToInt16(e.CommandArgument);  
                Session["sid"] = i.ToString();
                Response.Redirect("ViewDetailShop.aspx");
            }

            Label lblpid = (Label)e.Item.FindControl("label5");
            Label lblpname = (Label)e.Item.FindControl("label1");
            Label lblprice = (Label)e.Item.FindControl("label2");
            Image img = (Image)e.Item.FindControl("Image1");

            if (e.CommandName == "AddToBasket")
            {
                if (Session["uid"] == null)
                {
                    Response.Redirect("UserLogin.aspx");
                }
                else
                {

                    con.Open();
                    string str;
                    str = "select count(*) from Basket where User_Id = '" + Session["uid"] + "' and Product_Id = '" + lblpid.Text + "'";
                    SqlCommand cmd = new SqlCommand(str, con);

                    string result;
                    result = Convert.ToString(cmd.ExecuteScalar());
                    if (result == "1")
                    {
                        this.ClientScript.RegisterStartupScript(this.GetType(), "shopping", "<script language=\"javaScript\">" + "alert('This Product is already in Basket');" + "window.location.href='Cart.aspx';" + "<" + "/script>");
                        //   Response.Redirect("UserAllProduct.aspx");  
                    }

                    else
                    {
                        int i = Convert.ToInt16(e.CommandArgument);
                        Session["Product_Id"] = i.ToString();
                        Response.Redirect("AddBasket.aspx");
                    }
                    con.Close();
                }
            }
        }
        void catDatalistBind()
        {
            PagedDataSource pds = new PagedDataSource();
            connection();
            con.Open();
            string str = "select * from category";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList2.DataSource = ds;
            DataList2.DataBind();
            pds.DataSource = ds.Tables[0].DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 9;
            DataList2.DataSource = pds;
            DataList2.DataBind();
            con.Close();
        }

        void cityDatalistBind()
        {
            PagedDataSource pds = new PagedDataSource();
            connection();
            con.Open();
            string str = "select * from city";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList3.DataSource = ds;
            DataList3.DataBind();
            pds.DataSource = ds.Tables[0].DefaultView;
            pds.AllowPaging = true;
            pds.PageSize = 9;
            DataList3.DataSource = pds;
            DataList3.DataBind();
            con.Close();
        }
        public void cate(object sender, DataListCommandEventArgs e)
        {

            if (e.CommandName == "cat")
            {
                int i = Convert.ToInt16(e.CommandArgument);
                Session["cid"] = i.ToString();
                Response.Redirect("shop.aspx");
            }

        }
        public void cit(object sender, DataListCommandEventArgs e)
        {

            if (e.CommandName == "city")
            {
                int i = Convert.ToInt16(e.CommandArgument);
                Session["cityid"] = i.ToString();
                Response.Redirect("shop.aspx");
            }

        }

       
    }
}