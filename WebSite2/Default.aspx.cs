using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from login where username='" + txtuser.Text + "' and password='" + txtpass.Text + "'", con);
            // Execute the command or do something else with it
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            cmd.ExecuteNonQuery();
            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Write("<script>alert('successfully login in')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error login in')</script>");
            }
        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }
        finally
        {
            con.Close(); // Always close the connection
        }

    }

  
}