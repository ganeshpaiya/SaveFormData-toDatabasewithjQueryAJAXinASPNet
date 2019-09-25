using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using System.Web.Script.Services;


namespace SaveFormData_toDatabasewithjQueryAJAXinASPNet.Controller
{
    public class controllerclasss : Models.dbconnection
    {
        string connString = Models.dbconnection.ConnectionString1;
        [WebMethod]
        [ScriptMethod]
        public static void Saveemp(Models.empolyee emp)
        {
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