<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member2.aspx.cs" Inherits="Member2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Member2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>會員管理頁面 2</h1>
            
            <asp:Label ID="Label1" runat="server" Text="會員名稱"></asp:Label>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="登出" OnClick="Button1_Click"/>
            <br /><br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:HyperLinkField Text="選取" DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="Member2Details.aspx?id={0}"></asp:HyperLinkField>
                    <asp:BoundField DataField="user_Id" HeaderText="user_Id" ReadOnly="True" SortExpression="user_Id"></asp:BoundField>
                    <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password"></asp:BoundField>
                    <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="licence" HeaderText="licence" SortExpression="licence"></asp:BoundField>
                    <asp:BoundField DataField="birth" HeaderText="birth" SortExpression="birth"></asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel"></asp:BoundField>
                    <asp:BoundField DataField="permission" HeaderText="permission" SortExpression="permission"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member]">
            </asp:SqlDataSource>
 
        </div>
    </form>
</body>
</html>
