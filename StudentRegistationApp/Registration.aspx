<%@ Page Title="Student Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="StudentRegistationApp.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>     
        <div class="form-group">  
            <table class="auto-style1">  
                <tr>  
                    <td style="height: 22px">Name :</td>  
                    <td style="height: 22px">  
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>
                
                <tr>  
                    <td>Branch</td>  
                     <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>  
                </tr>  
                 <tr>  
                    <td>Phone</td>  
                     <td> <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>  
                </tr>  
                
                <tr>  
                    <td>Email</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                   <td>  
                        <asp:Button ID="Button1" runat="server" OnClick="SubmitForm" CssClass="btn btn-primary text-center center-block" Text="Submit" />  
                    </td>   
                </tr>  
            </table>  
            <asp:Label ID="StatusBox" runat="server"></asp:Label>
        </div>  
</asp:Content>
