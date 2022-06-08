using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_project_demo
{
    public partial class doctorsgrd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["doctorId"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox12")).Text;
            SqlDataSource1.InsertParameters["doctorname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox7")).Text;
            SqlDataSource1.InsertParameters["doctorfee"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TextBox10")).Text;
            SqlDataSource1.InsertParameters["deptId"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlDepts")).SelectedValue;
            SqlDataSource1.Insert();



        }

        
    }
}