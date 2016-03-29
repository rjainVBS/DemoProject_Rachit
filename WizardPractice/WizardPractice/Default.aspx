<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WizardPractice._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE"
        BorderWidth="1px" Font-Names="Verdana" Font-Size="Medium" Height="350px" OnNextButtonClick="Wizard1_NextButtonClick"
        Width="780px" DisplaySideBar="False">
        <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px"
            Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
        <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid"
            BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
        <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
        <StepStyle Font-Size="0.8em" ForeColor="#333333" />
        <WizardSteps>
            <asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">
                Welcome
            </asp:WizardStep>
            <asp:WizardStep ID="WizardStep2" runat="server" Title="Step 2">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">Please enter name</asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
                    RepeatLayout="Flow">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1"
                    ErrorMessage="Please select the gender" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 3">
                <asp:Label ID="lblWife" runat="server" Text="Enter Your Wife Name"></asp:Label>
                <asp:TextBox ID="txtWife" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtWife"
                    ErrorMessage="Please enter wife name"></asp:RequiredFieldValidator>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 4">
                <asp:Label ID="lblHusband" runat="server" Text="Enter Your Husband Name"></asp:Label>
                <asp:TextBox ID="txtHusband" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtHusband"
                    ErrorMessage="Please enter husband name"></asp:RequiredFieldValidator>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 5" OnActivate="Step5_Activate">
                Name:
                <asp:Label ID="lblEnteredName" runat="server"></asp:Label><br />
                Gender
                <asp:Label ID="lblGender" runat="server"></asp:Label><br />
                Spouse Name
                <asp:Label ID="lblSpouseName" runat="server"></asp:Label>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step 6">
                Thank You
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
</asp:Content>
