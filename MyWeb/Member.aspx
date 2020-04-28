<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>會員管理頁面</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>會員管理頁面</h1>
            
            <asp:Label ID="Label1" runat="server" Text="會員名稱"></asp:Label>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="登出" OnClick="Button1_Click"/>
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="Member2" OnClick="Button2_Click" />
            <br /><br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
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
                <Columns>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member]">

            </asp:SqlDataSource>
            <br />

            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="user_Id" DataSourceID="SqlDataSource2">

                <Fields>
                    <asp:BoundField DataField="user_Id" HeaderText="user_Id" ReadOnly="True" SortExpression="user_Id"></asp:BoundField>
                    <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password"></asp:BoundField>
                    <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="licence" HeaderText="licence" SortExpression="licence"></asp:BoundField>
                    <asp:BoundField DataField="birth" HeaderText="birth" SortExpression="birth"></asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel"></asp:BoundField>
                    <asp:BoundField DataField="permission" HeaderText="permission" SortExpression="permission"></asp:BoundField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member] WHERE ([user_id] = @user_id)" DeleteCommand="DELETE FROM [Member] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Member] ([user_id], [user_password], [user_name], [licence], [birth], [sex], [address], [tel]) VALUES (@user_id, @user_password, @user_name, @licence, @birth, @sex, @address, @tel)" UpdateCommand="UPDATE [Member] SET [user_password] = @user_password, [user_name] = @user_name, [licence] = @licence, [birth] = @birth, [sex] = @sex, [address] = @address, [tel] = @tel WHERE [user_id] = @user_id">


                <DeleteParameters>
                    <asp:Parameter Name="user_id"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_id"></asp:Parameter>
                    <asp:Parameter Name="user_password"></asp:Parameter>
                    <asp:Parameter Name="user_name"></asp:Parameter>
                    <asp:Parameter Name="licence"></asp:Parameter>
                    <asp:Parameter Name="birth"></asp:Parameter>
                    <asp:Parameter Name="sex"></asp:Parameter>
                    <asp:Parameter Name="address"></asp:Parameter>
                    <asp:Parameter Name="tel"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="user_id"></asp:ControlParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_password"></asp:Parameter>
                    <asp:Parameter Name="user_name"></asp:Parameter>
                    <asp:Parameter Name="licence"></asp:Parameter>
                    <asp:Parameter Name="birth"></asp:Parameter>
                    <asp:Parameter Name="sex"></asp:Parameter>
                    <asp:Parameter Name="address"></asp:Parameter>
                    <asp:Parameter Name="tel"></asp:Parameter>
                    <asp:Parameter Name="user_id"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
