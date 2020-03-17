using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace DemoWeb
{
    public partial class Extract : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ToString());
            adp = new SqlDataAdapter("sp_ExtractDept", con);
            if (!IsPostBack)
            {
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();
                adp.Fill(ds, "E");
                ddldeptno.DataSource = ds.Tables["E"];
                ddldeptno.DataTextField = "dname";
                ddldeptno.DataValueField = "deptno";
                ddldeptno.DataBind();
            }
        }



      

       
        protected void btn_Click(object sender, EventArgs e)
        {

            //adp = new SqlDataAdapter("sp_getdeptdetails", con);
            //adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            //adp.SelectCommand.Parameters.AddWithValue("@deptno", ddldeptno.SelectedValue);
            //DataSet ds = new DataSet();
            //adp.Fill(ds, "E");
            //gvdata.DataSource = ds.Tables["E"];
            //gvdata.DataBind();
        }

        protected void ddldeptno_SelectedIndexChanged1(object sender, EventArgs e)
        {
            adp = new SqlDataAdapter("sp_getdeptdetails", con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.AddWithValue("@deptno", ddldeptno.SelectedValue);
            DataSet ds = new DataSet();
            adp.Fill(ds, "E");
            gvdata.DataSource = ds.Tables["E"];
            gvdata.DataBind();
        }
    }
}