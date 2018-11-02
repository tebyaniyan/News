using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"data source=.\sqlexpress; attachdbfilename=|datadirectory|\Database.mdf; integrated security=true; user instance=True");
        SqlCommand cmd = new SqlCommand("select * from tblNews", con);
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        reader.Close();
        con.Close();
    }
}