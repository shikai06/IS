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
            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
                string query = String.Format("INSERT INTO sender (fname, lname, number, address) VALUES ('{0}', '{1}', '{2}', '{3}')",
                                                                tbFirstName.Text,
                                                                tbLastName.Text,
                                                                tbNumber.Text,
                                                                tbAddress.Text);

                using (SqlConnection con = new SqlConnection(@"Server=.\SQLEXPRESS;Database=SIS;Integrated Security=SSPI"))
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
                pnlFormFields.Visible = false;
                pnlThankYouMessage.Visible = true;

        }


    }
}