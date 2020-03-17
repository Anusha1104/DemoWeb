using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWeb
{
    public partial class MyMaster1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["username"] == null)
                Response.Redirect("Login.aspx");
            else
                Label1.Text = "Welcome " + Request.Cookies["username"].Value;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Request.Cookies["username"] != null)
            {
                HttpCookie aCookie = HttpContext.Current.Request.Cookies["username"];
                aCookie.Expires = DateTime.Now.AddSeconds(-10);
                aCookie.Value = "";
                HttpContext.Current.Response.Cookies.Add(aCookie);
                Response.Redirect("Login.aspx");
            }
            
        }
    }
}