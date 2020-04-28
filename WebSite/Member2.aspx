<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member2.aspx.cs" Inherits="Member2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>會員管理頁面</h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=" 您好，歡迎光臨。"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="登出" OnClick="Button1_Click" />
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="user_id" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False">
                <Columns>
                    <asp:HyperLinkField Text="選取" DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="MemberDetails.aspx?id={0}"></asp:HyperLinkField>
                    <asp:BoundField DataField="user_name" HeaderText="姓名" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="user_id" HeaderText="帳號" SortExpression="user_id" ReadOnly="True"></asp:BoundField>
                    <asp:BoundField DataField="user_password" HeaderText="密碼" SortExpression="user_password"></asp:BoundField>
                    <asp:BoundField DataField="licence" HeaderText="身分證" SortExpression="licence" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="birth" HeaderText="生日" SortExpression="birth" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="性別" SortExpression="sex" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="電話" SortExpression="tel"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"></FooterStyle>
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"></HeaderStyle>
                <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"></RowStyle>
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>
                <SortedAscendingCellStyle BackColor="#FFF1D4"></SortedAscendingCellStyle>
                <SortedAscendingHeaderStyle BackColor="#B95C30"></SortedAscendingHeaderStyle>
                <SortedDescendingCellStyle BackColor="#F1E5CE"></SortedDescendingCellStyle>
                <SortedDescendingHeaderStyle BackColor="#93451F"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
