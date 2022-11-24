<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Retrieve.aspx.cs" Inherits="StudentRegistationApp.Scripts.Retrieve" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2 style="width: 196px; margin-left: 560px">Student Details</h2>
    <form id="form1" runat="server">
        <div style="margin-left: 40px"> 
            <h3>Enter Student ID</h3>
            <asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
        </div>
        <p style="margin-left: 40px">
            <asp:Button ID="getStudentBtn" runat="server" OnClick="RetrieveStudentDetails" Text="Show Details" OnClientClick="RetrieveStudentDetails" />
        </p>
        <div style="margin-left: 40px"><asp:Label ID="ErrorBox" runat="server"></asp:Label></div>
        <div style="margin-left: 360px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" Width="520px">
                <EditRowStyle BorderColor="#33CCFF" BorderStyle="Solid" />
                <HeaderStyle BackColor="#FFCCFF" BorderStyle="Double" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
