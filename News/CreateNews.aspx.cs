using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class CreateNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Text1.Value);
        var title = Text2.Value;
        var content = TextArea1.Value;

        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "INSERT INTO List (news_id, title, context) VALUES(@0, @1, @2)";

        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@0", id);
        cmd.Parameters.AddWithValue("@1", title);
        cmd.Parameters.AddWithValue("@2", content);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Close();
        conn.Close();
        Response.Redirect("Default.aspx");
    }
}