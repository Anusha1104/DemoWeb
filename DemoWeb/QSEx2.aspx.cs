﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoWeb
{
    public partial class QSEx2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Request.QueryString["a"]; //not case sensitive
            string s1 = Request.QueryString["B"];
            string s2 = Request.QueryString["C"];
            Response.Write(s + "  " + s1+"  "+s2);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("QSEx3.aspx");
        }
    }
}