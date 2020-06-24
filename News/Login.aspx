<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Views/css/materialize.min.css" media="screen,projection" />
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>

    <title>登入</title>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
        <div class="row" style="margin-top: 5%">
            <div class="row">
                <div class="col l6 offset-l3">
                    <asp:Label ID="Label1" runat="server" Text="帳號" Font-Size="Large" ForeColor="Black"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="帳號不可為空白" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col col l6 offset-l3">
                    <asp:Label ID="Label2" runat="server" Text="密碼" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密碼不可為空白" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col col l6 offset-l3">
<%--                    <asp:Button ID="Button1" runat="server" CssClass="btn-large" Text="登入1" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" CssClass="btn-large" Text="登入2" OnClick="Button2_Click" />--%>
                    <asp:Button ID="Button3" runat="server" CssClass="btn-large" Text="登入" OnClick="Button3_Click" Font-Size="Large" />
                    <p><a href="Default.aspx">首頁</a></p>
                </div>
            </div>

            <div class="row">
                <div class="col col l6 offset-l3">
                    <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>
                <div class="col col l6 offset-l3">
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' SelectCommand="SELECT [id], [password], [permission] FROM [Member] WHERE (([id] = @id) AND ([password] = @password))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="id" Type="String"></asp:ControlParameter>
                    <asp:ControlParameter ControlID="TextBox2" PropertyName="Text" Name="password" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    </div>
</body>
</html>
