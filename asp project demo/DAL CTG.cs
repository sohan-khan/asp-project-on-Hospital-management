using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace asp_project_demo
{
    public class categories
    {
        public int ctid { get; set; }
        public string category { get; set; }
    }
    public class DAL_CTG
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H6A275T\MSSQLSERVER01;Initial Catalog=hmdb;Integrated Security=True");
        public DataSet Getcategories()
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from categories", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds;
        }
        
        public void Insert(categories c)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into categories(ctid,category) values(@i,@c)", con);
            cmd.Parameters.AddWithValue("@i", c.ctid);
            cmd.Parameters.AddWithValue("@c", c.category);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
        public void Update(categories c)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Update categories set category=@c where ctid=@i", con);
            cmd.Parameters.AddWithValue("@c", c.category);
            cmd.Parameters.AddWithValue("@i", c.ctid);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public void Delete(categories c)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from categories where ctid=@i", con);
            cmd.Parameters.AddWithValue("@i", c.ctid);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}