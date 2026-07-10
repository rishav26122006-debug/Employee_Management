<%@ Page Title="New Employee" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="new_employee.aspx.cs"
    Inherits="WebApplication7.new_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="new_employee.css" rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="form-container">

    <h2 class="form-title">
        &nbsp;</h2>

    <table class="form-table">

        <tr>
            <td>Employee ID</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Employee Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Department</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>Salary</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td colspan="2" style="text-align:center; padding-top:20px;">

                <asp:Button
                    ID="Button1"
                    runat="server"
                    Text="Register Employee"
                    CssClass="register-btn" OnClick="Button1_Click" />

            </td>
        </tr>

    </table>

</div>

</asp:Content>