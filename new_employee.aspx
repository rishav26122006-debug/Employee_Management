<%@ Page Title="Logout" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="Log_out.aspx.cs"
    Inherits="WebApplication7.Log_out" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="logout.css" rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="logout-container">

    <div class="logout-icon">
        ✓
    </div>

    <h2>You have been logged out successfully!</h2>

    <p>
        Thank you for using the Employee Management System.
    </p>

    <asp:Button
        ID="Button1"
        runat="server"
        Text="Login Again"
        CssClass="login-btn"
        PostBackUrl="~/Login.aspx" />

</div>

</asp:Content>