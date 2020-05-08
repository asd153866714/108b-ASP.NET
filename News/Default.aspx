<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
        body {
            padding:80px;
        }
    </style>

    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="content">
            <h1>新聞公告系統</h1>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="news_id" DataSourceID="SqlDataSource1">

                <Columns>
                    <asp:HyperLinkField Text="選取" DataNavigateUrlFields="news_id" DataNavigateUrlFormatString="NewsDetails.aspx?id={0}"></asp:HyperLinkField>
                    <asp:BoundField DataField="news_id" HeaderText="id" ReadOnly="True" SortExpression="news_id"></asp:BoundField>
                    <asp:BoundField DataField="title" HeaderText="標題" SortExpression="title" HeaderStyle-Width="300px"></asp:BoundField>

                </Columns>
                <HeaderStyle BackColor="#6699FF" Font-Bold="True" ForeColor="White"></HeaderStyle>           
                <RowStyle BackColor="#FFF7E7"></RowStyle>
                
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [List]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" Text="新增" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
