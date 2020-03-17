using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWeb
{
    public partial class Update : System.Web.UI.Page
    {
        DemoEntities d = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            d = new DemoEntities();
        }

        protected void txteno_TextChanged(object sender, EventArgs e)
        {
            int eno = int.Parse(txteno.Text);
            var E = from i in d.EMPDATAs
                    where i.EMPNO == eno
                    select i;
            EMPDATA emp = E.First();
            string hd= DateTime.Parse(emp.HIREDATE.ToString()).ToString("yyyy-MM-dd");
            txtename.Text = emp.ENAME;
            txtjob.Text = emp.JOB;
            txtmgrid.Text = emp.MGR.ToString();
            txthd.Text = hd;
            txtsal.Text = emp.SAL.ToString();
            txtcomm.Text = emp.COMM.ToString();
            txtdeptno.Text = emp.DEPTNO.ToString();




              
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //int eno = int.Parse(txteno.Text);
            //var E1= from i in d.EMPDATAs
            //        where i.EMPNO == eno
            //        select i;
            //EMPDATA E= E1.First();
            int a = 0;
            bool c = int.TryParse(txtcomm.Text, out a);
            EMPDATA E = new EMPDATA();
            E.EMPNO = int.Parse(txteno.Text);
            E.ENAME = txtename.Text;
            E.JOB = txtjob.Text;
            E.MGR = int.Parse(txtmgrid.Text);
            E.HIREDATE = DateTime.Parse(txthd.Text);
            E.SAL = int.Parse(txtsal.Text);
           if(a!=0)
            E.COMM = a;
            E.DEPTNO = int.Parse(txtdeptno.Text);
            d.Entry(E).State = System.Data.Entity.EntityState.Modified;
            d.SaveChanges();
            Response.Write("<script>alert('Updated');</script>");
          
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            int eno = int.Parse(txteno.Text);
            var emp = from i in d.EMPDATAs
                    where i.EMPNO == eno
                    select i;
            EMPDATA E = emp.First();
            d.EMPDATAs.Remove(E);
            d.SaveChanges();
        }
    }
}