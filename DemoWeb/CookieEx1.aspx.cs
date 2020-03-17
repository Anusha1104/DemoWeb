using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWeb
{
    public partial class CookieEx1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length != 0)
            {
                //creating a cookie variable
                Response.Cookies["U"].Value = TextBox1.Text;

                //second way to create a cookie
                HttpCookie H = new HttpCookie("user");
                H.Value = TextBox1.Text;
                H.Expires = DateTime.Now.AddSeconds(5);
                Response.Cookies.Add(H);

                Response.Cookies["U"].Expires = DateTime.Now.AddSeconds(5);
                Response.Redirect("CookieEx2.aspx");
            }
        }
    }
}