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
    public partial class rentservicedetails2 : System.Web.UI.Page
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
                Label1.Visible = false;
                if (Page.IsPostBack == false)
                {
                    connection();
                    con.Open();
                    string str = "Select * from services where sid='" + Session["sid"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(str, con);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string str1 = "select cname from city where cid='" + reader["city"].ToString() + "'";
                        SqlCommand cmd12 = new SqlCommand(str1, con);
                        txtpicklocation.Text = cmd12.ExecuteScalar().ToString();

                    }



                }
                if (Page.IsPostBack == false)
                {
                    connection();
                    string str;
                    str = "select * from city";
                    SqlCommand cmd = new SqlCommand(str, con);
                    con.Open();

                    dropoffddl.DataSource = cmd.ExecuteReader();
                    dropoffddl.DataTextField = "cname";
                    dropoffddl.DataValueField = "cid";
                    dropoffddl.DataBind();
                    dropoffddl.Items.Insert(0, "Select City");


                }


            }
            else
            {
                Response.Redirect("Sign_In.aspx");
            }
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }
        }
        protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }
        }


        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            if (Page.IsPostBack == true)
            {
                txtpdate.Text = Calendar1.SelectedDate.Date.ToShortDateString();
                if (txtldate.Text != "")
                {
                    if (Calendar2.SelectedDate.Date.ToUniversalTime() < Calendar1.SelectedDate.Date.ToUniversalTime())
                    {
                        Label1.Text = "Return Date Can not be before Start Date";
                        txtldate.Text = "";
                        Calendar2.Visible = false;
                        Calendar1.Visible = false;

                    }
                    else
                        Calendar1.Visible = true;
                }

                if (Calendar1.SelectedDate.Date.ToUniversalTime() <= System.DateTime.Now.ToUniversalTime())
                {
                    Label1.Text = "Start Date Cannot be before tommorrow";
                    txtpdate.Text = "";
                    Calendar1.Visible = false;
                }
                Calendar1.Visible = false;

            }
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txtldate.Text = Calendar2.SelectedDate.Date.ToShortDateString();
            if (Calendar2.SelectedDate.Date.ToUniversalTime() < Calendar1.SelectedDate.Date.ToUniversalTime())
            {
                Label1.Text = "Leaving date should be greater than Pickup  date";
                txtldate.Text = "";
                Calendar2.Visible = false;
            }

            Calendar2.Visible = false;
        }



        protected void btnrent_Click(object sender, EventArgs e)
        {
            DateTime sdate, edate;
            sdate = Calendar1.SelectedDate;
            edate = Calendar2.SelectedDate;

            connection(); 
            con.Open();
            string str1 = "Select * from booking where serviceid='" + Session["sid"].ToString() + "'";
            //  string str1 = "Select * from booking where serviceid IN (select serviceid from booking GROUP BY serviceid='" + Session["sid"].ToString() + "'   HAVING COUNT(*) > 1 )";
            SqlCommand cmd = new SqlCommand(str1, con);
            int i;
            i = Convert.ToInt16(cmd.ExecuteScalar());
            if (i > 0)
            {
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    DateTime pdate, ddate;
                    pdate = Convert.ToDateTime(reader["picldate"]);
                    ddate = Convert.ToDateTime(reader["dropdate"]);



                    if (sdate < pdate && edate > ddate)
                    //      if ((sdate> pdate &&  sdate < ddate ) ||( edate > pdate && edate< ddate ))
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Sorry , Car is Already Booked. Search for a new one');window.location='shop.aspx'</script>");
                        break;
                    }
                    
                    else if (sdate >= pdate && sdate <= ddate)
                    //      if ((sdate> pdate &&  sdate < ddate ) ||( edate > pdate && edate< ddate ))
                    {
                        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Sorry , Car is Already Booked. Search for a new one');window.location='shop.aspx'</script>");
                        break;
                    }
                    
                    else
                    {
                        if (edate >= pdate && edate <= ddate)
                        {
                            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Sorry , Car is Already Booked. Search for a new one');window.location='shop.aspx'</script>");
                            break;
                        }
                        else
                        {

                            int totaldays = (edate - sdate).Days;

                            string str;
                            str = "Insert into booking(bfname,blname,bemail,mobile,picldate,dropdate,pickloc,droploc,serviceid,userid) values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "' ,'" + txtpdate.Text + "','" + txtldate.Text + "','" + txtpicklocation.Text + "','" + dropoffddl.SelectedItem.Value + "','" + Session["sid"].ToString() + "','" + Session["id"].ToString() + "')";
                            SqlCommand cmd1 = new SqlCommand(str, con);
                            cmd1.ExecuteNonQuery();

                            Session["bfname"] = txtfname.Text;
                            Session["bemail"] = txtemail.Text;
                            Session["blname"] = txtlname.Text;
                            Session["mobile"] = txtphone.Text;
                            Session["pdate"] = txtpdate.Text;
                            Session["ddate"] = txtldate.Text;
                            Session["ploc"] = txtpicklocation.Text;
                            Session["dloc"] = dropoffddl.SelectedItem.Value;

                            Session["totaldays"] = totaldays;
                            Response.Redirect("paydetails.aspx");






                        }


                    }


                }
            }
            else
            {
                int totaldays = (edate - sdate).Days;

                string str;
                str = "Insert into booking(bfname,blname,bemail,mobile,picldate,dropdate,pickloc,droploc,serviceid,userid) values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "' ,'" + txtpdate.Text + "','" + txtldate.Text + "','" + txtpicklocation.Text + "','" + dropoffddl.SelectedItem.Value + "','" + Session["sid"].ToString() + "','" + Session["id"].ToString() + "')";
                SqlCommand cmd1 = new SqlCommand(str, con);
                cmd1.ExecuteNonQuery();

                Session["bfname"] = txtfname.Text;
                Session["bemail"] = txtemail.Text;
                Session["blname"] = txtlname.Text;
                Session["mobile"] = txtphone.Text;
                Session["pdate"] = txtpdate.Text;
                Session["ddate"] = txtldate.Text;
                Session["ploc"] = txtpicklocation.Text;
                Session["dloc"] = dropoffddl.SelectedItem.Value;


                Session["totaldays"] = totaldays;
                Response.Redirect("paydetails.aspx");




            }








        }

        protected void ddldetails_SelectedIndexChanged(object sender, EventArgs e)
        {
            txttime.Text = ddldetails.SelectedItem.Text;
        }


    }

}