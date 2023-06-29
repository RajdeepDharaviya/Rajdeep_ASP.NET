<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" >
    <div class="banner">
        <h1 style="text-align:center; font-weight:600;color:white">This is Banner!</h1>
        <img src="Images/Penguins.jpg" style="border-radius:100px; width:15%"/>
    
    </div>
        
        <div class="form">
        <h1 style="text-align:center;color:wheat">Form</h1>
         <div class="components">
    <div class="componentsLeft">
        <asp:Label ID="lblName" runat="server" Text="Label" CssClass="componentsLeft">Name : - </asp:Label>
    </div>
             <div class="componentsRight">
                 <asp:TextBox ID="txtName" runat="server" CssClass="inputControls"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="reqValtxtName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name must not be blank" Font-Size="0.7em" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
    </div>
        <div class="components">
    <div class="componentsLeft">
        <asp:Label ID="Label6" runat="server" Text="Label" CssClass="componentsLeft">Gender : - </asp:Label>
    </div>
             <div class="componentsRight">
                 <asp:RadioButton ID="rdMale" runat="server" /> Male
                 <asp:RadioButton ID="rdFemale" runat="server" /> Female
                 <br />
                 <asp:CustomValidator ID="cusValGender" runat="server" Display="Dynamic" ErrorMessage="Please select your gender!" Font-Size="0.8em" ForeColor="Red" OnServerValidate="cusValGender_ServerValidate"></asp:CustomValidator>
             </div>
    </div>
        <div class="components">
    <div class="componentsLeft">
        <asp:Label ID="lblBDate" runat="server" Text="Label" CssClass="componentsLeft">Birthdate : - </asp:Label>
    </div>
             <div class="componentsRight">
                 <asp:TextBox ID="txtBDate" runat="server" CssClass="inputControls"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqValBDate" runat="server" ControlToValidate="txtBDate" Display="Dynamic" ErrorMessage="BirthDate must not be blank" Font-Size="0.7em" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
    </div>
        <div class="components">
    <div class="componentsLeft">
        <asp:Label ID="lblAge" runat="server" Text="Label" CssClass="componentsLeft">Age : - </asp:Label>
    </div>
             <div class="componentsRight">
                 <asp:TextBox ID="txtAge" runat="server" CssClass="inputControls"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqValtxtAge" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age must not be blank" Font-Size="0.7em" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Invalid Age" Font-Size="0.7em" ForeColor="Red" MaximumValue="50" MinimumValue="18"/>

             </div>
    </div>
        <div class="components">
    <div class="componentsLeft">
        <asp:Label ID="lblAddress" runat="server" Text="Label" CssClass="componentsLeft">Address : - </asp:Label>
    </div>
             <div class="componentsRight">
                 <asp:TextBox ID="txtAddress" runat="server" CssClass="inputControls"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqValtxtAddress" runat="server" ControlToValidate="txtAddress" Display="Dynamic" ErrorMessage="Address must not be blank" Font-Size="0.7em" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
    </div>
        <div class="components">
    <div class="componentsLeft">
        <asp:Label ID="lblCity" runat="server" Text="Label" CssClass="componentsLeft">city : - </asp:Label>
    </div>
             <div class="componentsRight">
                 <asp:DropDownList ID="ddlCity" runat="server" CssClass="inputControls"></asp:DropDownList>
             </div>
    </div>
        <div class="components">
    <div class="componentsLeft">
        <asp:Label ID="lblEmail" runat="server" Text="Label" CssClass="componentsLeft">Email ID : - </asp:Label>
    </div>
             <div class="componentsRight">
                 <asp:TextBox ID="txtEmail" runat="server" CssClass="inputControls"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqValtxtEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email must not be blank" Font-Size="0.7em" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="reqExptxtEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email Id is not valid !" Font-Size="0.7em" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </div>
    </div>
        <div class="components">
    <div class="componentsLeft">
        <asp:Label ID="lblPhone" runat="server" Text="Label" CssClass="componentsLeft">Contact No : - </asp:Label>
    </div>
             <div class="componentsRight">
                 <asp:TextBox ID="txtPhone" runat="server" CssClass="inputControls"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="reqValtxtPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Phone must not be blank" Font-Size="0.7em" ForeColor="Red"></asp:RequiredFieldValidator>
             </div>
    </div>
        <div class="components">
            &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btnSubmit" OnClick="btnSubmit_Click"  />
        </div>
            </div>
    </form>
</body>
</html>
