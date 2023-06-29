using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
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