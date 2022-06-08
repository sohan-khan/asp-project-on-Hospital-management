using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace asp_project_demo
{
    public class departments
    {
        public int deptId { get; set; }
        public string deptname { get; set; }
    }
    public class DAL_DEPT
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H6A275T\MSSQLSERVER01;Initial Catalog=hmdb;Integrated Security=True");
        public DataSet GetDepts()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from departments", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return (ds);
        }
        public void Insert(departments d)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into departments(deptId,deptname) values(@i,@d)", con);
            cmd.Parameters.AddWithValue("@i", d.deptId);
            cmd.Parameters.AddWithValue ("@d", d.deptname);
            cmd.ExecuteNonQuery();
            con.Close();

            
        }
        public void Update(departments d)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update departments set deptname=@d where deptId=@i", con);
            cmd.Parameters.AddWithValue("@i", d.deptId);
            cmd.Parameters.AddWithValue("@d", d.deptname);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        public void Delete(departments d)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete from departments where deptId=@i", con);
            cmd.Parameters.AddWithValue("@i", d.deptId);
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}