<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member2Details.aspx.cs" Inherits="Member2Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Member2 Details</title>
</head>
<body style="padding:80px">
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">

                <Fields>
                    <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id"></asp:BoundField>
                    <asp:TemplateField HeaderText="user_password" SortExpression="user_password">
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
                    <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name"></asp:BoundField>
                    <asp:TemplateField HeaderText="birth" SortExpression="birth">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("birth", "{0:yyyy年MM月dd日}") %>' ID="TextBox2"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("birth", "{0:yyyy年MM月dd日}") %>' ID="TextBox2"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("birth", "{0:yyyy年MM月dd日}") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="sex" SortExpression="sex">
                        <EditItemTemplate>
                            <asp:RadioButton ID="RadioButton1" Text="男" GroupName="sex" Checked='<%# Eval("sex").ToString() == "1" ? true : false %>' runat="server" />
                            <asp:RadioButton ID="RadioButton2" Text="女" GroupName="sex" Checked='<%# Eval("sex").ToString() == "0" ? true : false %>' runat="server" />
                            <%--<asp:TextBox runat="server" Text='<%# Bind("sex") %>' ID="TextBox3"></asp:TextBox>--%>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("sex") %>' ID="TextBox3"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("sex").ToString() == "1" ? "男" : "女" %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel"></asp:BoundField>
                    <asp:BoundField DataField="permission" HeaderText="permission" SortExpression="permission"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
            </asp:DetailsView>

            <a href="Member2.aspx">返回</a>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Member] WHERE ([user_id] = @user_id)" DeleteCommand="DELETE FROM [Member] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [Member] ([user_id], [user_password], [user_name], [licence], [birth], [sex], [address], [tel], [permission]) VALUES (@user_id, @user_password, @user_name, @licence, @birth, @sex, @address, @tel, @permission)" UpdateCommand="UPDATE [Member] SET [user_password] = @user_password, [user_name] = @user_name, [licence] = @licence, [birth] = @birth, [sex] = @sex, [address] = @address, [tel] = @tel, [permission] = @permission WHERE [user_id] = @user_id">
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
                    <asp:Parameter Name="permission" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="user_id" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
