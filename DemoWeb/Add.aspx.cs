using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Objects;

namespace DemoWeb
{
    public partial class Add : System.Web.UI.Page
    {
        DemoEntities d = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            d = new DemoEntities();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            try
            {
                EMPDATA E = new EMPDATA();
                E.EMPNO = int.Parse(txteno.Text);
                E.ENAME = txtename.Text;
                E.JOB = txtjob.Text;
                E.MGR = int.Parse(txtmgrid.Text);
                E.HIREDATE = DateTime.Parse(txthd.Text);
                E.SAL = int.Parse(txtsal.Text);
                E.COMM = int.Parse(txtcomm.Text);
                E.DEPTNO = int.Parse(txtdeptno.Text);

                d.EMPDATAs.Add(E);
                d.SaveChanges();
            }
            catch(DbUpdateException M)
            {
                SqlException ex = M.GetBaseException() as SqlException;
                if (ex.Message.Contains("EMP_PK"))
                    label.Text = "No Duplicate Empno is allowed";
                else if (ex.Message.Contains("FK__EMPDept"))
                    label.Text = "Deptno does not exsist";
                else
                    label.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ObjectParameter ob = new ObjectParameter("result",typeof(string));
            d.sp_insertempdata(int.Parse(txteno.Text),txtename.Text,txtjob.Text,int.Parse(txtmgrid.Text),DateTime.Parse(txthd.Text),int.Parse(txtsal.Text),int.Parse(txtcomm.Text),int.Parse(txtdeptno.Text),ob);
            label.Text = ob.Value.ToString();
        }
    }
}