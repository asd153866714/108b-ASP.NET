<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member2.aspx.cs" Inherits="Member2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Member2</title>
</head>
<body style="padding:80px">
    <form id="form1" runat="server">
        <div>
            <h1>會員管理頁面 2</h1>
            
            <asp:Label ID="Label1" runat="server" Text="會員名稱"></asp:Label>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="登出" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="新增" OnClick="Button2_Click" />
            <br /><br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="user_id" DataNavigateUrlFormatString="Member2Details.aspx?id={0}" DataTextField="user_id" DataTextFormatString="{0}" HeaderText="user_id"></asp:HyperLinkField>

                    <asp:BoundField DataField="user_Id" HeaderText="user_Id" ReadOnly="True" SortExpression="user_Id" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="user_password" HeaderText="user_password" SortExpression="user_password"></asp:BoundField>
                    <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="licence" HeaderText="licence" SortExpression="licence"></asp:BoundField>
                    <asp:BoundField DataField="birth" HeaderText="birth" SortExpression="birth"></asp:BoundField>
                    <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel"></asp:BoundField>
                    <asp:BoundField DataField="permission" HeaderText="permission" SortExpression="permission"></asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink runat="server" Text="編輯" NavigateUrl='<%# "~/Member2Details.aspx?id=" + Eval("user_id") + "&cmd=edit" %>' ID="HyperLink1"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member]" DeleteCommand="DELETE FROM [Member] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Member] ([user_id], [user_password], [user_name], [licence], [birth], [sex], [address], [tel], [permission]) VALUES (@user_id, @user_password, @user_name, @licence, @birth, @sex, @address, @tel, @permission)" UpdateCommand="UPDATE [Member] SET [user_password] = @user_password, [user_name] = @user_name, [licence] = @licence, [birth] = @birth, [sex] = @sex, [address] = @address, [tel] = @tel, [permission] = @permission WHERE [user_id] = @user_id">
                <DeleteParameters>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="licence" Type="String"></asp:Parameter>
                    <asp:Parameter Name="birth" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                    <asp:Parameter Name="permission" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="licence" Type="String"></asp:Parameter>
                    <asp:Parameter Name="birth" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                    <asp:Parameter Name="permission" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
 
        </div>
    </form>
</body>
</html>
