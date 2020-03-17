using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CognizantApplication
{
    public class Population
    {
        int ApplicationId;
        int MemberId;
        string Firstname;
        string Middlename;
        string Lastname;
        string Suffix;
        DateTime Dob;
        string Gender;

        public int ApplicationId1 { get => ApplicationId; set => ApplicationId = value; }
        public int MemberId1 { get => MemberId; set => MemberId = value; }
        public string Firstname1 { get => Firstname; set => Firstname = value; }
        public string Middlename1 { get => Middlename; set => Middlename = value; }
        public string Lastname1 { get => Lastname; set => Lastname = value; }
        public string Suffix1 { get => Suffix; set => Suffix = value; }
        public DateTime Dob1 { get => Dob; set => Dob = value; }
        public string Gender1 { get => Gender; set => Gender = value; }
    }
}