<%@ Page Title="Retrieve Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RetrieveStudents.aspx.cs" Inherits="StudentRegistationApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
   <div style="margin: 40px 40px 40px 80px" > 
            <h5>Enter Student ID</h5>
            <asp:TextBox ID="StudentID" runat="server" BorderStyle="Solid"></asp:TextBox>
            <asp:Button ID="getStudentBtn" runat="server" OnClick="RetrieveStudentDetails" Text="Show Details" OnClientClick="RetrieveStudentDetails" CssClass="btn btn-primary"  Font-Bold="True" ForeColor="White" Width="100px" />
        </div>
        <p style="margin-left: 80px">
            <asp:Label ID="ErrorBox" runat="server"></asp:Label></p>
        <div style="margin-left: 40px"></div>
        <div style="margin-left: 360px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" Width="520px">
                <EditRowStyle BorderColor="#33CCFF" BorderStyle="Solid" />
                <HeaderStyle BackColor="#FFCCFF" BorderStyle="Double" />
            </asp:GridView>
        </div>
</asp:Content>
