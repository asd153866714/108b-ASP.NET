using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member2Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int permission = int.Parse(Session["permission"].ToString());
        if (permission == 0)
        {
            DetailsView1.Rows[DetailsView1.Rows.Count - 1].Visible = false;
        }

        //string id = DetailsView1.Rows[0].Cells[1].Text;
        //string id = Request.QueryString["id"];
        //if (Session["id"].ToString() != id)
        //{
        //    DetailsView1.Rows[DetailsView1.Rows.Count - 1].Visible = false;
        //}

        string cmd = Request.QueryString["cmd"];
        if (cmd == "new")
        {
            DetailsView1.ChangeMode(DetailsViewMode.Insert);
        }
        else if (cmd == "edit")
        {
            DetailsView1.ChangeMode(DetailsViewMode.Edit);
        }
        
    }
}