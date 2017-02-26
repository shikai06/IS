using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Sample_IS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillData();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
                string query = String.Format("INSERT INTO student (FirstName, LastName, Address, Gender) VALUES ('{0}', '{1}', '{2}', '{3}')",
                                                                tbFirstName.Text,
                                                                tbLastName.Text,
                                                                tbAddress.Text,
                                                                ddGender.Text);

                using (SqlConnection con = new SqlConnection(@"Server=.\SQLEXPRESS;Database=IS;Integrated Security=SSPI"))
            {
                using (SqlCommand com = new SqlCommand(query, con))
                {
                    try
                    {
                        con.Open();
                        com.ExecuteNonQuery();
                    }
                    catch (Exception)
                    {
                        
                        throw;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }


        }

        private void FillData()
        {
            string query = String.Format(@"SELECT [FirstName]
      ,[LastName]
      ,[Address]
      ,[Gender]
  FROM [dbo].[student]");

            using (SqlConnection con = new SqlConnection(@"Server=.\SQLEXPRESS;Database=IS;Integrated Security=SSPI"))
            {
                using (SqlCommand com = new SqlCommand(query, con))
                {
                    try
                    {
                        con.Open();
                        SqlDataAdapter adapt = new SqlDataAdapter(com);
                        DataSet1 ds = new DataSet1();
                        adapt.Fill(ds,"DataTable1");
                        GridView1.DataSource = ds.Tables[0];
                        GridView1.DataBind();
                    }
                    catch (Exception)
                    {

                        throw;
                    }
                    finally
                    {
                        con.Close();
                    }
                }
            }
        }

    }
}