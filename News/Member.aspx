<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Views/css/materialize.min.css" media="screen,projection" />
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>

    <title>會員管理</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h3>會員管理</h3>
            <p>
            <asp:Label ID="Label1" runat="server" Text="" Font-Size="X-Large" Font-Italic="False" ForeColor="#009933" Font-Bold="True"></asp:Label>
            </p>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="MemberDetails.aspx?id={0}" DataTextField="id" DataTextFormatString="{0}" HeaderText="id"></asp:HyperLinkField>

                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                    <asp:BoundField DataField="license" HeaderText="license" SortExpression="license"></asp:BoundField>
                    <asp:BoundField DataField="birth" HeaderText="birth" SortExpression="birth"></asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel"></asp:BoundField>
                    <asp:BoundField DataField="permission" HeaderText="permission" SortExpression="permission"></asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#EFF3FB"></RowStyle>

                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <br />
            <a id="scale-demo" href="Default.aspx" class="btn-floating btn-large scale-transition">
                <i class="material-icons">arrow_back</i>
            </a>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' SelectCommand="SELECT * FROM [Member]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
