<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-1.7.1.js" type="text/javascript"></script>
    <script src="jquery-1.7.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("input").focus(function () {
                $(this).css("background-color", "red");
                $(this).css("color", "yellow");
                $(this).parent().parent().css("background-color", "yellow");
            });
            $("input").blur(function () {
                $(this).css("background-color", "white");
                $(this).css("color", "black");
                $(this).parent().parent().css("background-color", "white");
            });
        });
    
    
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="3" cellspacing="3" class="style1">
            <tr>
                <td style="width: 33%">
                    Please Enter your Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td style="width: 33%">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="Name is missing" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Please Enter your Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Password is missing" 
                        ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Please Confirm your Password</td>
                <td>
                    <asp:TextBox ID="txtconfimPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtconfimPassword" 
                        ErrorMessage="Passwords do not match" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Select your Gender</td>
                <td>
                    <asp:RadioButtonList ID="rdoGenderList" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Please Enter your Email Address</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Email is not Valid" 
                        ForeColor="#FF3300" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Please Enter your CNIC
                </td>
                <td>
                    <asp:TextBox ID="txtCNIC" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtCNIC" ErrorMessage="CNIC not valid" ForeColor="#FF3300" 
                        ValidationExpression="\d{5}-\d{7}-\d{1}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Please select your Country</td>
                <td>
                    <asp:DropDownList ID="drpCountry" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="drpCountry_SelectedIndexChanged">
                        <asp:ListItem>Pakistan</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Srilanka</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Please Select your City</td>
                <td>
                    <asp:DropDownList ID="drpCity" runat="server">
                        <asp:ListItem>Karachi</asp:ListItem>
                        <asp:ListItem>Lahore</asp:ListItem>
                        <asp:ListItem>Islamabad</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Register" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
