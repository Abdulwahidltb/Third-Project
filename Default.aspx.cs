using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
            Response.Redirect("Welcome.aspx");
    }
    protected void drpCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        drpCity.Items.Clear();
        if (drpCountry.SelectedValue == "Pakistan")
        {
            drpCity.Items.Add("Karachi");
            drpCity.Items.Add("Lahore");
            drpCity.Items.Add("Islamabad");
        }
        else if (drpCountry.SelectedValue == "India")
        {
            drpCity.Items.Add("Mumbai");
            drpCity.Items.Add("Kolkata");
            drpCity.Items.Add("dehli");
        }
        if (drpCountry.SelectedValue == "Srilanka")
        {
            drpCity.Items.Add("Columbo");
            drpCity.Items.Add("Candy");
           
        }
    }
}