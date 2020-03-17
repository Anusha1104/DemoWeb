using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace DemoWeb
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ToString());
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            adp = new SqlDataAdapter("sp_ValidateLogin", con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.AddWithValue("@u", txtusername.Text);
            adp.SelectCommand.Parameters.AddWithValue("@p", txtpassword.Text);

            SqlParameter p = new SqlParameter("@c",SqlDbType.Int);
            p.Direction = ParameterDirection.Output;
            adp.SelectCommand.Parameters.Add(p);

            DataSet ds = new DataSet();
            adp.Fill(ds, "L");
            if (p.Value.ToString() == "1")
            {
                //creating cookie variable
                Response.Cookies["username"].Value = txtusername.Text;
                Response.Redirect("AddEmp.aspx");
            }
            else
            {
                lblmessage.Text = "Invalid Credentials";
                txtusername.Text = "";
                txtpassword.Text = "";
                txtusername.Focus();
            }



        }
    }
}