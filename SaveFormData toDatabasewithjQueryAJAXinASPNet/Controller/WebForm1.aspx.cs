using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SaveFormData_toDatabasewithjQueryAJAXinASPNet.Controller
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        [ScriptMethod]
        public static void Saveemp(Models.empolyee emp)
        {
            string connString = Models.dbconnection.ConnectionString1;
        }


        public class controllerclasss : Models.dbconnection
        {
            string connString = Models.dbconnection.ConnectionString1;
           
            public static void Saveemp1(Models.empolyee emp)

                 {
               string varu= emp.Email;
                using (SqlConnection con = new SqlConnection(ConnectionString1))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO Users VALUES(@Username, @Password)"))
                    {
                        cmd.CommandType = CommandType.Text;
                        //cmd.Parameters.AddWithValue("@Username", user.Username);
                        // cmd.Parameters.AddWithValue("@Password", user.Password);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
        }
    }
}