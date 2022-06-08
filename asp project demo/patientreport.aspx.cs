using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_project_demo
{
    public partial class patientreport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H6A275T\MSSQLSERVER01;Initial Catalog=hmdb;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * From patient", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ReportDocument cryRpt = new ReportDocument();
            cryRpt.Load(Server.MapPath("CrystalReport1.rpt"));
            cryRpt.SetDataSource(ds.Tables["CrystalReportViewer1"]);
            CrystalReportViewer1.ReportSource = cryRpt;
            cryRpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "patient Information");
        }
    }
}