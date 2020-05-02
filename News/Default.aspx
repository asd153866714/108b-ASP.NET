<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>

    </style>

    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>新聞公告系統</h1>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="news_id" DataSourceID="SqlDataSource1">

                <Columns>
                    <asp:HyperLinkField Text="選取" DataNavigateUrlFields="news_id" DataNavigateUrlFormatString="NewsDetails.aspx?id={0}"></asp:HyperLinkField>
                    <asp:BoundField DataField="news_id" HeaderText="id" ReadOnly="True" SortExpression="news_id"></asp:BoundField>
                    <asp:BoundField DataField="title" HeaderText="標題" SortExpression="title"></asp:BoundField>

                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [List]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
