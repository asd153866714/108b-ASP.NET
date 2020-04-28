<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width:160px;padding:20px;background-color:azure;border-color:Blue;">
                <legend>系統登入</legend>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="帳號："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="100"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="帳號不可為空白" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                    
                </div>
                <div style="padding-top:10px;">
                    <asp:Label ID="Label2" runat="server" Text="密碼："></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="100" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密碼不可為空白" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div style="padding-top:10px; text-align:center;">
                    <asp:Button ID="Button1" runat="server" Text="登入1" Width="50" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="登入2" Width="50" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" Text="登入3" Width="50" OnClick="Button3_Click" />
                </div>
            </fieldset>
            <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [user_id], [user_password], [permission] FROM [Member] WHERE (([user_id] = @user_id) AND ([user_password] = @user_password))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="user_id" Type="String"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="TextBox2" PropertyName="Text" Name="user_password" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
