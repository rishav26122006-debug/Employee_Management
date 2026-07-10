using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//using System.Data;
namespace WebApplication7
{
    public partial class list : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=employee;Integrated Security=True");
        SqlDataAdapter da;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string q;
            q = "select * from emp";
            da = new SqlDataAdapter(q,conn);
            DataSet ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}