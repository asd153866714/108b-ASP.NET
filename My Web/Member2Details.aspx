<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member2Details.aspx.cs" Inherits="Member2Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Member2 Details</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">

                <Fields>
                    <asp:BoundField DataField="user_id" HeaderText="帳號" ReadOnly="True" SortExpression="user_id"></asp:BoundField>
                    <asp:BoundField DataField="user_password" HeaderText="密碼" SortExpression="user_password"></asp:BoundField>
                    <asp:BoundField DataField="user_name" HeaderText="姓名" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="licence" HeaderText="身分證" SortExpression="licence"></asp:BoundField>
                    <asp:BoundField DataField="birth" HeaderText="生日" SortExpression="birth"></asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="性別" SortExpression="sex"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="電話" SortExpression="tel"></asp:BoundField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
