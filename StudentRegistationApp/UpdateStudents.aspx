<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateStudents.aspx.cs" Inherits="StudentRegistationApp.UpdateStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div><h3>
            Enter Student ID
             </h3>
            </div>
       <asp:TextBox ID="StudentID" runat="server" BorderStyle="Solid"></asp:TextBox>
            <asp:Button ID="getStudentBtn" runat="server" OnClick="RetrieveStudentDetails" Text="Show Details" OnClientClick="RetrieveStudentDetails" CssClass="btn btn-primary" Font-Bold="True" ForeColor="White" Width="110px" />
     <p style="margin-left: 80px">
            <asp:Label ID="ErrorBox" runat="server"></asp:Label></p>
       
        <table style="border-spacing: 0px 15px" class="auto-style1">

            <tr>  
                    <td>Name</td>  
                     <td> <asp:TextBox ID="NameBox" runat="server"></asp:TextBox></td>  
                </tr>  
            <tr>  
                    <td>Branch</td>  
                     <td> <asp:TextBox ID="BranchBox" runat="server"></asp:TextBox></td>  
                </tr>  
            <tr>  
                    <td>Phone</td>  
                     <td> <asp:TextBox ID="PhoneBox" runat="server"></asp:TextBox></td>  
                </tr>  
            <tr>  
                    <td style="height: 22px">Email</td>  
                     <td style="height: 22px"> <asp:TextBox ID="EmailBox" runat="server"></asp:TextBox></td>  
                </tr>  
            
           <tr style="margin:15px">  
                   <td style="margin-left: 40px">  
                        <asp:Button ID="updateBtn" runat="server" OnClick="UpdateDetails" CssClass="btn btn-primary text-center center-block" Text="Update" BackColor="#339933" Font-Bold="True" />  
                    </td>   
                        <td style="margin-left: 160px">
                                                    <asp:Button ID="deleteBtn" runat="server" OnClick="DeleteStudent" CssClass="btn btn-primary text-center center-block" Text="Delete" BackColor="Red" Font-Bold="True" />  

                        </td>
                </tr>  
           <tr>  
                   <td>  
                        &nbsp;</td>   
                        <td>
                                                    &nbsp;</td>
                </tr>  
       </table>
        <div><asp:Label ID="UpdateMsg" runat="server"></asp:Label></div>
</asp:Content>
