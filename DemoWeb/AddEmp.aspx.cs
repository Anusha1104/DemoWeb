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
    public partial class AddEmp : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ToString());
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            adp = new SqlDataAdapter("sp_insertempdata", con);
            adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            adp.SelectCommand.Parameters.AddWithValue("@eno",int.Parse(txteno.Text));
            adp.SelectCommand.Parameters.AddWithValue("@ename",txtename.Text);
            adp.SelectCommand.Parameters.AddWithValue("@job",txtjob.Text);
            adp.SelectCommand.Parameters.AddWithValue("@mgr",int.Parse(txtmgrid.Text));
            adp.SelectCommand.Parameters.AddWithValue("@hireddate",DateTime.Parse(txthd.Text));
            adp.SelectCommand.Parameters.AddWithValue("@sal",int.Parse(txtsal.Text));
            adp.SelectCommand.Parameters.AddWithValue("@comm",int.Parse(txtcomm.Text));
            adp.SelectCommand.Parameters.AddWithValue("@deptno",int.Parse(txtdeptno.Text));

            SqlParameter p = new SqlParameter("@result", SqlDbType.NVarChar,100);
            p.Direction = ParameterDirection.Output;
            adp.SelectCommand.Parameters.Add(p);
            DataSet ds = new DataSet();
            adp.Fill(ds,"Emp");
            //Response.Write("<script>alert(p.Value.ToString())</script>");
            messagelabel.Text = p.Value.ToString();


        }
    }
}