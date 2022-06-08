using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace asp_project_demo
{
    public partial class doctors : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H6A275T\MSSQLSERVER01;Initial Catalog=hmdb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBind();
            }
        }


        private void DataBind()
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from doctors", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                DataList1.EditItemIndex = e.Item.ItemIndex;
                DataBind();
            }
            else if (e.CommandName == "Cancel")
            {
                DataList1.EditItemIndex = -1;
                DataBind();
            }
            else if (e.CommandName == "Update")
            {
                DataListItem dl = e.Item;
                string Id = ((TextBox)dl.FindControl("TextBox1")).Text;
                string Name = ((TextBox)dl.FindControl("TextBox2")).Text;
                //string dept = ((DropDownList)dl.FindControl("DropDownList1")).SelectedValue; deptname = '" + dept + "',
                string Dept = ((TextBox)dl.FindControl("TextBox3")).Text;
                string fee = ((TextBox)dl.FindControl("TextBox4")).Text;
                string cid = ((TextBox)dl.FindControl("TextBox5")).Text;
                SqlCommand cmd = new SqlCommand(" update doctors set doctorname='" + Name + "',deptname='" + Dept + "',doctorfee='" + fee + "',deptId='" + cid + "' where doctorId=" + Id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                DataList1.EditItemIndex = -1;
                DataBind();
            }

            else if (e.CommandName == "Delete")
            {
                DataListItem dl = e.Item;
                string Id = ((Label)dl.FindControl("Label1")).Text;
                SqlCommand cmd = new SqlCommand("delete from doctors where doctorId=" + Id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                DataList1.EditItemIndex = -1;
                DataBind();
            }

            else if (e.CommandName == "Insert")
            {
                DataListItem dl = e.Item;
                string Id = ((TextBox)dl.FindControl("TxtId")).Text;
                string Name = ((TextBox)dl.FindControl("Txtname")).Text;
                //string dept = ((DropDownList)dl.FindControl("DropDownList1")).SelectedValue;/*deptname = '" + dept + "'*/,
                string Dept = ((TextBox)dl.FindControl("Txtdept")).Text;
                string fee = ((TextBox)dl.FindControl("Txtfee")).Text;
                string cid = ((TextBox)dl.FindControl("TxtdeptId")).Text;
                SqlCommand cmd = new SqlCommand(" insert into doctors values ('" + Id + "','" + Name + "','" + Dept + "','" + fee + "','" + cid + "')",con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                //DataList1.EditItemIndex = -1;
                DataBind();
            }
        }

        //protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        //{
        //    if (args.Value.Length > 500)

        //        args.IsValid = true;

        //    else
        //        args.IsValid = false;

        //}
    }

}

