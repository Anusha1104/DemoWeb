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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlDataAdapter adp = null;
        DemoEntities d = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            d = new DemoEntities();

            var deptno = (from i in d.DEPTDATAs
                         select i).ToList();
            List<DEPTDATA> l = deptno;
            if(!IsPostBack)
            {
                txtstart.Enabled = false;
                txtend.Enabled = false;
                ddldeptno.Enabled = false;
                ddldeptno.DataSource = l;
                ddldeptno.DataTextField = "dname";
                ddldeptno.DataValueField = "deptno";
                ddldeptno.DataBind();
            }



            //con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ToString());
            //adp = new SqlDataAdapter("sp_ExtractDept", con);
            //if (!IsPostBack)
            //{
            //    txtstart.Enabled = false;
            //    txtend.Enabled = false;
            //    ddldeptno.Enabled = false;
            //    adp.SelectCommand.CommandType = CommandType.StoredProcedure;
            //    DataSet ds = new DataSet();
            //    adp.Fill(ds, "E");
            //    ddldeptno.DataSource = ds.Tables["E"];
            //    ddldeptno.DataTextField = "dname";
            //    ddldeptno.DataValueField = "deptno";
            //    ddldeptno.DataBind();
            //}
        }

        protected void rdbhiredate_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbhiredate.Checked)
            {
                txtstart.Enabled=true;
                txtend.Enabled = true;
                ddldeptno.Enabled = false;
            }
           

        }

        protected void rdbdeptno_CheckedChanged(object sender, EventArgs e)
        {
            if(rdbdeptno.Checked)
            {
                txtstart.Enabled = false;
                txtend.Enabled = false;
                ddldeptno.Enabled = true;
            }
        }

        protected void btnextract_Click(object sender, EventArgs e)
        {
            if(rdbhiredate.Checked)
            {
                adp = new SqlDataAdapter("sp_extractdates", con);
                adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                adp.SelectCommand.Parameters.AddWithValue("@strtdate", txtstart.Text);
                adp.SelectCommand.Parameters.AddWithValue("@enddate", txtend.Text);
                DataSet ds = new DataSet();
                adp.Fill(ds, "E");
                gvdata.DataSource = ds.Tables["E"];
                gvdata.DataBind();
            }
            else if(rdbdeptno.Checked)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (rdbhiredate.Checked)
            {

                DateTime stdt = DateTime.Parse(txtstart.Text);
                DateTime enddt = DateTime.Parse(txtend.Text);
                var D = (from i in d.EMPDATAs
                        where i.HIREDATE >= stdt && i.HIREDATE <= enddt
                        select i).ToList();

                List < EMPDATA > data=D;
                gvdata.DataSource = data;
                gvdata.DataBind();

            }
            else if(rdbdeptno.Checked)
            {
                int dno = int.Parse(ddldeptno.SelectedValue);
                var D = from i in d.EMPDATAs
                        where i.DEPTNO == dno
                        select i;

                List<EMPDATA> dept = D.ToList();
                gvdata.DataSource = dept;
                gvdata.DataBind();




                
                
                
               


            }

        }
    }
}