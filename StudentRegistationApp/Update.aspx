<%@ Page Title="Update" Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="StudentRegistationApp.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
                            <asp:Button ID="backbtn" runat="server" OnClick="backbtnClick" CssClass="btn btn-primary text-center center-block" Text="Home" BackColor="Gray" BorderStyle="Solid" />  

        <div>Enter Student ID</div>
       <asp:TextBox ID="StudentID" runat="server" BorderStyle="Solid"></asp:TextBox>
            <asp:Button ID="getStudentBtn" runat="server" OnClick="RetrieveStudentDetails" Text="Show Details" OnClientClick="RetrieveStudentDetails" BackColor="#009933" Font-Bold="True" ForeColor="White" Width="110px" />
     <p style="margin-left: 80px">
            <asp:Label ID="ErrorBox" runat="server"></asp:Label></p>
        <table class="auto-style1">

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
                    <td>Email</td>  
                     <td> <asp:TextBox ID="EmailBox" runat="server"></asp:TextBox></td>  
                </tr>  
           <tr>  
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
    </form>
</body>
</html>
