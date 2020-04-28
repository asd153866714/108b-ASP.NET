using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string password = TextBox2.Text;

        if (id == "bill" && password == "12345")
        {
            Session["id"] = "bill";
            Response.Redirect("Member.aspx");
        }
        else Label3.Text = "帳號或密碼錯誤，請再輸入一次。";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string password = TextBox2.Text;

        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "SE LECT * FROM [Member] WHERE [user_id] = @input1 AND [user_password] = @input2";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@input1", id);
        cmd.Parameters.AddWithValue("@input2", password);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.HasRows)
        {
            reader.Read();
            string user_id = reader["user_id"].ToString();
            string user_name = reader["user_name"].ToString();

            Session["id"] = user_id;
        }
        reader.Close();
        conn.Close();

        if (Session["id"] != null) Response.Redirect("Member.aspx");
        else Label3.Text = "帳號或密碼錯誤，請再輸入一次。";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DataView dataView = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dataView.Count >= 1)
        {
            Session["id"] = dataView[0][0].ToString();
            Session["permission"] = dataView[0][2].ToString();
            Response.Redirect("Member.aspx");
        }
        else Label3.Text = "帳號或密碼錯誤，請再輸入一次。";
    }
}