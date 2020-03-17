using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWeb
{
    public partial class CookieEx3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //fetching the cookie variable
                string s = Request.Cookies["U"].Value;
                string s1 = Request.Cookies["user"].Value;
                Response.Write(s+" "+s1);
            }
            catch(NullReferenceException)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}