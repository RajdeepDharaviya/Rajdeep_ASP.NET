using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    static string QRY = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (IsValid) { 

        //}
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rdFemale.Checked || rdMale.Checked)
        {
            cusValGender.IsValid = true;
            QRY = "INSERT INTO StudentInfo ";
            QRY += "SELECT MAX(Stud_Id) + 1, ";
            QRY += "'"+txtName.Text+"', ";
            //Gender
            if (rdMale.Checked)
                QRY += "'TRUE', ";
            else
                QRY += "'FALSE', ";
            QRY += "'" + txtBDate.Text + "', ";
            QRY += "'" + txtAge.Text + "', ";
            QRY += "'" + txtAddress.Text + "', ";
            QRY += "'" + ddlCity.SelectedValue+ "', ";
            QRY += "'" + txtEmail.Text + "', ";
            QRY += "'" + txtPhone.Text + "', 'TRUE' ";
            QRY += "FROM StudentInfo";
            
            SqlConnection cnn = new SqlConnection("Data Source=RAJDEEPDHARAVIY;Initial Catalog=Stud_Info;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(QRY, cnn);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
        else
        {
            cusValGender.IsValid = false;
        }
    }
    protected void cusValGender_ServerValidate(object source, ServerValidateEventArgs args)
    {
      
    }

}