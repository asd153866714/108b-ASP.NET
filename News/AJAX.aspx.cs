﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Dispatcher;
using System.Web.Services;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ajax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string SayHello()
    {
        return "Hello Ajax!";
    }
}