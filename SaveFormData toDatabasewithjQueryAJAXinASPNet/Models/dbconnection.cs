using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SaveFormData_toDatabasewithjQueryAJAXinASPNet.Models
{
    public class dbconnection
    {
        string ConnectionString =ConfigurationManager.ConnectionStrings["Db_EmpoleeConnectionString"].ConnectionString;
        SqlConnection con;

        private static string connectionString1 = ConfigurationManager.ConnectionStrings["Db_EmpoleeConnectionString"].ConnectionString;

        public static string ConnectionString1
        {
            get
            {
                return connectionString1;
            }
            set
            {
                connectionString1 = value;
            }
        }

        public void OpenConection()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
        }


        public void CloseConnection()
        {
            con.Close();
        }


        public void ExecuteQueries(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }


        public SqlDataReader DataReader(string Query_)
        {
            SqlCommand cmd = new SqlCommand(Query_, con);
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }


        public object ShowDataInGridView(string Query_)
        {
            SqlDataAdapter dr = new SqlDataAdapter(Query_, ConnectionString);
            DataSet ds = new DataSet();
            dr.Fill(ds);
            object dataum = ds.Tables[0];
            return dataum;
        }
    }
}
