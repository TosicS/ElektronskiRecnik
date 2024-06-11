using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElektronskiRecnik
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxOpis.Enabled = false;
        }
        

        protected void ButtonPrevedi_Click(object sender, EventArgs e)
        {

            if (DropDownList1.SelectedIndex == 1)
            {
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Skola\MATURA\VebProgramiranje\B10 - Elektronski recnik\ElektronskiRecnik\ElektronskiRecnik\App_Data\Recnik.mdf"";Integrated Security=True";
                string query = "SELECT Engleski,Opis FROM TabelaReci WHERE Srpski=@parSrpRec";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@parSrpRec", TextBoxSrpRec.Text);

                    connection.Open();



                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        TextBoxEngRec.Text = reader["Engleski"].ToString();
                        TextBoxOpis.Text = reader["Opis"].ToString();
                    }

                    connection.Close();
                }

            }

            if (DropDownList1.SelectedIndex == 2)
            {
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Skola\MATURA\VebProgramiranje\B10 - Elektronski recnik\ElektronskiRecnik\ElektronskiRecnik\App_Data\Recnik.mdf"";Integrated Security=True";
                string query = "SELECT Srpski,Opis FROM TabelaReci WHERE Engleski=@parEngRec";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@parEngRec", TextBoxEngRec.Text);

                    connection.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.HasRows) // proverava da li ima redova u bazi
                    {
                        while (reader.Read())
                        {
                            TextBoxSrpRec.Text = reader["Srpski"].ToString();
                            TextBoxOpis.Text = reader["Opis"].ToString();
                        }
                    }
                    else
                    {
                        //TextBoxOpis.Text = "Rec nije pronadjena";
                        //treba prikazati alert da rec nije pronadjena
                        TextBoxSrpRec.Text = "";
                        TextBoxOpis.Text = "";
                        ScriptManager.RegisterStartupScript(this, GetType(), "myalert", "alert('Reč nije pronađena');", true);
                    }
                    

                    connection.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DodavanjeNovihReci.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex ==1)
            {
                TextBoxEngRec.Enabled = false;
                TextBoxOpis.Enabled = false;
                TextBoxSrpRec.Enabled = true;
            }

            if (DropDownList1.SelectedIndex == 2)
            {
                TextBoxSrpRec.Enabled = false;
                TextBoxOpis.Enabled = false;
                TextBoxEngRec.Enabled = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Uputstvo.aspx");

        }
        
    }
}