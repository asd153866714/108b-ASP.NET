using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhotoDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        FileUpload fileUpload = DetailsView1.FindControl("FileUpload1") as FileUpload;
        e.Values["path"] = @"image/" + fileUpload.FileName;
    }

    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        FileUpload fileUpload = DetailsView1.FindControl("FileUpload1") as FileUpload;
        e.NewValues["path"] = @"image/" + fileUpload.FileName;
    }

    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        Response.Redirect("Photo.aspx");
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        Response.Redirect("Photo.aspx");
    }
}