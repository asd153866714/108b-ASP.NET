<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberDetails.aspx.cs" Inherits="MemberDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></EditRowStyle>
                <Fields>
                    <asp:BoundField DataField="user_id" HeaderText="帳號" ReadOnly="True" SortExpression="user_id"></asp:BoundField>
                    <asp:TemplateField HeaderText="密碼" SortExpression="user_password">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("user_password") %>' ID="TextBox1"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("user_password") %>' TextMode="Password" ID="TextBox1"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("user_password") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="user_name" HeaderText="姓名" SortExpression="user_name"></asp:BoundField>
                    <asp:BoundField DataField="licence" HeaderText="身分證" SortExpression="licence"></asp:BoundField>
                    <asp:TemplateField HeaderText="生日" SortExpression="birth">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("birth") %>' ID="TextBox2"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("birth") %>' ID="TextBox2"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("birth", "(0:yyyy年xx月dd日)") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="性別" SortExpression="sex">
                        <EditItemTemplate>
                            <asp:RadioButton ID="RadioButton1" Text="男" GroupName="sex" Checked="" runat="server" />
                            <asp:RadioButton ID="RadioButton2" Text="女" GroupName="sex" runat="server" />
                            <%--<asp:TextBox runat="server" Text='<%# Bind("sex") %>' ID="TextBox3"></asp:TextBox>--%>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("sex") %>' ID="TextBox3"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("sex") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="電話" SortExpression="tel"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"></FooterStyle>
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"></HeaderStyle>
                <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"></RowStyle>
            </asp:DetailsView>
            <a href="Member2.aspx">返回</a>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member] WHERE ([user_id] = @user_id)" DeleteCommand="DELETE FROM [Member] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Member] ([user_id], [user_password], [user_name], [licence], [birth], [sex], [address], [tel]) VALUES (@user_id, @user_password, @user_name, @licence, @birth, @sex, @address, @tel)" UpdateCommand="UPDATE [Member] SET [user_password] = @user_password, [user_name] = @user_name, [licence] = @licence, [birth] = @birth, [sex] = @sex, [address] = @address, [tel] = @tel WHERE [user_id] = @user_id">
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
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="user_id" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="licence" Type="String"></asp:Parameter>
                    <asp:Parameter Name="birth" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="sex" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="address" Type="String"></asp:Parameter>
                    <asp:Parameter Name="tel" Type="String"></asp:Parameter>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
