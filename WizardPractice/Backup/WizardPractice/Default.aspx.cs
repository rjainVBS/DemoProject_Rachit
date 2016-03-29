using System;
using System.Web.UI.WebControls;

namespace WizardPractice
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (Wizard1.ActiveStepIndex == 1)
            {
                if (RadioButtonList1.SelectedValue == "Male")
                {
                    Wizard1.ActiveStepIndex = 2;
                }
                else
                {
                    Wizard1.ActiveStepIndex = 3;
                }
            }
            else if (Wizard1.ActiveStepIndex == 2)
            {
                Wizard1.ActiveStepIndex = 4;
            }
        }
        protected void Step5_Activate(object sender, System.EventArgs e)
        {
            lblEnteredName.Text= txtName.Text;
            lblGender.Text = RadioButtonList1.SelectedValue.ToString();
            if (RadioButtonList1.SelectedValue == "Male")
            {
                lblSpouseName.Text = txtWife.Text;
            }
            else
            {
                lblSpouseName.Text = txtHusband.Text;
            }
           
        }
    }
}

