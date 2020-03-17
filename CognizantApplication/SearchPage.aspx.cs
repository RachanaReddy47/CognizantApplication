using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CognizantApplication
{
    public partial class SearchPage : System.Web.UI.Page
    {
        SqlConnection Con = null;
        SqlDataAdapter Adp = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ToString());
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string str = "Select * from PopulationCensus";
            if (txtFname.Text.Length != 0)
                str = str + " where Firstname Like '" + txtFname.Text + "'";
            else if(txtLname.Text.Length!=0)
                str=str+ " where Lastname Like '" + txtLname.Text + "'";
            else if (txtAppId.Text.Length != 0)
                str = str + " where ApplicationId =" +int.Parse(txtAppId.Text) + "";
            Adp = new SqlDataAdapter(str, Con);
            DataSet DS = new DataSet();
            Adp.Fill(DS, "E");
            dgvdata.DataSource = DS.Tables["E"];
            dgvdata.DataBind();

        }
    }
}