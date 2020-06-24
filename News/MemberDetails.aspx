<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberDetails.aspx.cs" Inherits="MemberDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Views/css/materialize.min.css" media="screen,projection" />
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>

    <title>會員資料</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h3>會員資料</h3>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="20%" Width="100%" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnItemInserted="DetailsView1_ItemInserted" OnItemDeleted="DetailsView1_ItemDeleted">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                    <asp:BoundField DataField="license" HeaderText="license" SortExpression="license"></asp:BoundField>
                    <asp:BoundField DataField="birth" HeaderText="birth" SortExpression="birth"></asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel"></asp:BoundField>
                    <asp:BoundField DataField="permission" HeaderText="permission" SortExpression="permission"></asp:BoundField>
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True"></asp:CommandField>
                    <asp:HyperLinkField NavigateUrl="~/Member.aspx" Text="返回" HeaderText="功能"></asp:HyperLinkField>
                </Fields>
            </asp:DetailsView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' DeleteCommand="DELETE FROM [Member] WHERE [id] = @id" InsertCommand="INSERT INTO [Member] ([id], [password], [name], [license], [birth], [sex], [address], [tel], [permission]) VALUES (@id, @password, @name, @license, @birth, @sex, @address, @tel, @permission)" SelectCommand="SELECT * FROM [Member] WHERE ([id] = @id)" UpdateCommand="UPDATE [Member] SET [password] = @password, [name] = @name, [license] = @license, [birth] = @birth, [sex] = @sex, [address] = @address, [tel] = @tel, [permission] = @permission WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="license" Type="String"></asp:Parameter>
                    <asp:Parameter Name="birth" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                    <asp:Parameter Name="permission" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="id" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="license" Type="String"></asp:Parameter>
                    <asp:Parameter Name="birth" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                    <asp:Parameter Name="permission" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="id" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
