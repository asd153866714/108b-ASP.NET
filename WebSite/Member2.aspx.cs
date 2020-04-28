﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null) Response.Redirect("Login.aspx");
        else
        {
            string id = Session["id"].ToString();
            Label1.Text = id;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Response.Redirect("Login.aspx");
    }
}