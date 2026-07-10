using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication7
{
    public partial class edit : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=employee;Integrated Security=True");
        SqlDataAdapter da;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string s;
            s = "select * from emp where eid=" + TextBox1.Text;

            da = new SqlDataAdapter(s, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Record not Found')</script>");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
              
            }
            else
            {


                TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][2].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0][3].ToString();
                            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s;
            s = "delete from emp where eid=" + TextBox1.Text;
            cmd=new SqlCommand(s, conn);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox1.Focus();
            Response.Write("<script>alert('Record Deleted Successfully')</script>");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s;
            s = "update emp set ename='" + TextBox2.Text + "',edept='" + TextBox3.Text + "', esal=" + TextBox4.Text + " where eid=" + TextBox1.Text;
            cmd = new SqlCommand(s, conn);
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox1.Focus();
            Response.Write("<script>alert('Record Updated Successfully')</script>");

        }
    }
}