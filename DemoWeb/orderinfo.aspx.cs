using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWeb
{
    public partial class orderinfo : System.Web.UI.Page
    {
        DemoEntities d = null;
        private void bind()
        {
            d = new DemoEntities();
            var v = from i in d.order_info
                    select i;
            FormView1.DataSource = v.ToList();
            FormView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            bind();
            d = new DemoEntities();
            var v = from i in d.order_info
                    select i;
            gvdata.DataSource = v.ToList();
            gvdata.DataBind();
            dview.DataSource = v.ToList();
            dview.DataBind();
            //FormView1.DataSource = v.ToList();
            //FormView1.DataBind();

        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            FormView1.PageIndex = e.NewPageIndex;
            this.bind();
        }

        protected void dview_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            dview.PageIndex = e.NewPageIndex;
            dview.DataBind();
        }

        protected void gvdata_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvdata.PageIndex = e.NewPageIndex;
            gvdata.DataBind();
        }
    }
}