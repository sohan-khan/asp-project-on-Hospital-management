using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_project_demo
{
    public partial class PatinetsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload fi = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
            if (fi.HasFile == true)
            {
                if (fi.PostedFile.ContentLength > 0)
                {
                    fi.PostedFile.SaveAs(Server.MapPath("~/Images/") + fi.FileName);
                    e.NewValues["picture"] = fi.FileName;
                }
            }

        }
    }
}