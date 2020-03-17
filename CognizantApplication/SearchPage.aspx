<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="CognizantApplication.SearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <td>First Name</td>
        <td>
            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
         <td>Last Name</td>
        <td>
            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
         <td>DOB</td>
        <td>
            <asp:TextBox  ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox></td>
    </tr>

    <tr>
         <td>Application ID</td>
        <td>
            <asp:TextBox  ID="txtAppId" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
         <td>Application Status </td>
        <td>
            <asp:DropDownList  ID="listAppStatus" runat="server">
                <asp:ListItem>Approved</asp:ListItem>
                <asp:ListItem>Rejected</asp:ListItem>
            </asp:DropDownList></td>
    </tr>

     <tr>         
        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Search" OnClick="btnSubmit_Click" />
        </td>
    </tr>

        <tr>
            <td>
                <asp:GridView ID="dgvdata" runat="server"></asp:GridView>
            </td>
        </tr>


</table>


</asp:Content>
