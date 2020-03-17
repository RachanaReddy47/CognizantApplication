<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster1.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="CognizantApplication.Page2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style6 {
            width: 177px;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="align-items:center" left="25%" class="auto-style10">
        <tr>
            <td class="auto-style6"> 
                 <asp:Label ID="Label1" runat="server" Text="Create Application" Font-Bold="True"></asp:Label></td>
            <td></td>
             <td>
                 <asp:Label ID="Label3" runat="server" Text="*Required Field" ForeColor="Red"></asp:Label></td>
             <br/>
               <br/>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="HouseHold member 1 of 1"></asp:Label>
            </td>
            </tr>

       <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="*"></asp:Label>First Name</td>
            <td>M.L</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="*"></asp:Label>Last Name</td>
            <td>Suffix</td>
       </tr>
       <tr>
            <td class="auto-style6"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>          
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>          
             <td>
                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>           
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem Value="-1">Select</asp:ListItem>
                     <asp:ListItem>Mr</asp:ListItem>
                     <asp:ListItem>Ms</asp:ListItem>
                     <asp:ListItem>Mrs</asp:ListItem>
                 </asp:DropDownList></td>
        </tr>

         <tr>
             <td class="auto-style6"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>Date Of Birth(mm/dd/yyyy)</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>Gender</td>
         </tr>
            
          <tr>
             <td class="auto-style6">
                 <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" Width="117px"></asp:TextBox></td>
             <td>
                 <asp:RadioButton ID="RadioButton1" GroupName="Gender" runat="server" />Male
              
                  <asp:RadioButton ID="RadioButton2" GroupName="Gender" runat="server" />Female</td>
         </tr>
         <tr>
             <td class="auto-style6"></td>
            
         </tr>

         <tr>
             <td class="auto-style6"></td>
            
         </tr> 

         <tr>
             <td class="auto-style6"></td>
             <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add Member" OnClick="Button1_Click" Width="160px" /> </td>        
        </tr>

         <tr>
             <td class="auto-style6"></td>
            
         </tr> 

         <tr>
            <td class="auto-style6">
                <asp:Button ID="Button2" runat="server" Text="Save and Exit" Width="160px" OnClick="Button2_Click" CausesValidation="False" /></td>        
        </tr>
        
<tr>
    <td class="auto-style6">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </td>
</tr>
    </table>
</asp:Content>
