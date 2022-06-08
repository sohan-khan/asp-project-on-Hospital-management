using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_project_demo
{
    public partial class patients1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fi = (FileUpload)DetailsView1.FindControl("FileUpload1");
            if (fi.HasFile ==true)
            {
                fi.PostedFile.SaveAs(Server.MapPath("~/Images/") + fi.FileName);
                e.Values["picture"] = fi.FileName;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length > 5)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

    }
}