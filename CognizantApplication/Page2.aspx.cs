using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace CognizantApplication
{
    

    public partial class Page2 : System.Web.UI.Page
    {
        List<Population> list = new List<Population>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["P"] != null)
                list = (List<Population>)Session["P"];
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BDHandler DB = new BDHandler();
            Population P = new Population();
            P.ApplicationId1 =DB.getAppId();
            P.MemberId1 = list.Count + 1;
            P.Firstname1 = TextBox1.Text;
            P.Middlename1 = TextBox2.Text;
            P.Lastname1 = TextBox3.Text;
            P.Suffix1 = DropDownList1.SelectedValue;
            P.Dob1 =DateTime.Parse(TextBox4.Text);
            string ch = RadioButton1.Checked ? "Male" : "Female";
            P.Gender1 =  ch;
            list.Add(P);
            Session["P"] = list;
            GridView1.DataSource = list;
            GridView1.DataBind();
        } 

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            BDHandler DB = new BDHandler();
            string s= DB.SaveMembers(list);
            Session.Remove("P");
            Response.Redirect("Page3.aspx?s=" + s);
        }
    }
}