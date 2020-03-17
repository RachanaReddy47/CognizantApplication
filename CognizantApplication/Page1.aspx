<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="CognizantApplication.Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .auto-style6 {
    background-color:green
     
            }
        .auto-style7 {
            background-color:green
        }
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Create Application" CssClass="auto-style6" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Text="Search Application" />
</asp:Content>
