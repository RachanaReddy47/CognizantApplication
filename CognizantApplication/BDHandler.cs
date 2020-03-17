using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace CognizantApplication
{
    public class BDHandler
    {
        SqlConnection Con = null;
        SqlCommand Cmd = null;
        public int getAppId()
        {
            int A = 0;
            try
            {
                Con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ToString());
                Con.Open();
                Cmd = new SqlCommand("select max(ApplicationId) from PopulationCensus", Con);
                string s=Cmd.ExecuteScalar().ToString();
                if (s == "")
                    A++;                
                else
                    A = int.Parse(s) + 1;


            }
            catch(SqlException E)
            {

            }
            finally
            {
                Con.Close();
            }
            return A;
        }

        public string SaveMembers(List<Population> L)
        {
            string str = null;int R = 0;
            try
            {
                Con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SqlCon"].ToString());
                Con.Open();
                Cmd = new SqlCommand("sp_Population", Con);
                Cmd.CommandType = CommandType.StoredProcedure;
                DataTable Db = new DataTable();
                Db.Columns.Add("ApplicationId", typeof(Int32));
                Db.Columns.Add("MemberId", typeof(Int32));
                Db.Columns.Add("FirstName", typeof(string));
                Db.Columns.Add("MiddleName", typeof(string));
                Db.Columns.Add("LastName", typeof(string));
                Db.Columns.Add("Suffix", typeof(string));
                Db.Columns.Add("DOB", typeof(DateTime));
                Db.Columns.Add("Gender", typeof(string));
                for (int i = 0; i < L.Count; i++)
                {
                    Db.Rows.Add(L[i].ApplicationId1, L[i].MemberId1, L[i].Firstname1, L[i].Middlename1, L[i].Lastname1, L[i].Suffix1, L[i].Dob1, L[i].Gender1);
                }
                SqlParameter P = new SqlParameter("@Pop", Db);
                P.SqlDbType = SqlDbType.Structured;
                Cmd.Parameters.Add(P);
                R=Cmd.ExecuteNonQuery();

                str = "Application submitted with " + L.Count + " Members details.Your Application id " + L[0].ApplicationId1;


               

            }
            catch (SqlException E)
            {
                Console.WriteLine(E.Message);
            }

            finally
            {
                Con.Close();
            }
            return str;
        }
    }




    
}