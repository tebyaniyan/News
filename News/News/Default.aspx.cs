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
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from newsT", con);
        SqlDataReader r = cmd.ExecuteReader();
        GridView1.DataSource = r;
        GridView1.DataBind();
        r.Close();
        con.Close();
    }
}