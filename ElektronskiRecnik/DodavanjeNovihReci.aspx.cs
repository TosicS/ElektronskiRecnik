using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElektronskiRecnik
{
    public partial class DodavanjeNovihReci : System.Web.UI.Page
    {
        public void ClearControls()
        {
            TextBoxEngRec.Text = "";
            TextBoxSrpRec.Text = "";
            TextBoxOpis.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonPrevedi_Click(object sender, EventArgs e)
        {

            SqlConnection konekcija = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Skola\MATURA\VebProgramiranje\B10 - Elektronski recnik\ElektronskiRecnik\ElektronskiRecnik\App_Data\Recnik.mdf"";Integrated Security=True");
            try
            {
                string sqlUpit = "INSERT INTO TabelaReci values(@parEngRec,@parSrpRec,@parOpis)";
                SqlCommand komanda = new SqlCommand(sqlUpit, konekcija);

                konekcija.Open();

                komanda.Parameters.AddWithValue("@parEngRec", TextBoxEngRec.Text);
                komanda.Parameters.AddWithValue("@parSrpRec", TextBoxSrpRec.Text);
                komanda.Parameters.AddWithValue("@parOpis", TextBoxOpis.Text);

                komanda.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                konekcija.Close();
            }
            ClearControls();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/DodavanjeNovihReci.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Uputstvo.aspx");
        }
    }
}