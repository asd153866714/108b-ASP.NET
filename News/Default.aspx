<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Views/css/materialize.min.css" media="screen,projection" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <title>Home</title>
</head>

<body>
    <form id="form1" runat="server">
        <ul id="dropdown1" class="dropdown-content">
            <li><a href="Photo.aspx">相簿</a></li>
            <li><a href="lightGallery-master/demo/Photo2.aspx">照片展示</a></li>
            <li><a href="Editor.aspx">編輯器</a></li>
            <li><a href="Flight.aspx">航班</a></li>
            <li><a href="AJAX.aspx">AJAX</a></li>
        </ul>
        <nav>
            <div class="nav-wrapper">
                <a href="#" class="brand-logo"></a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <!-- Dropdown Trigger -->
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1">功能<i class="material-icons right">arrow_drop_down</i></a></li>

                    <li><a href="Member.aspx">會員管理</a></li>
                    <% if (Session["id"] == null) { %>
                    <li><a class="waves-effect waves-light btn" href="Login.aspx">登入</a></li>
                    <% }else{ %>
                    <li><a class="waves-effect waves-light btn" runat="server" href="Login.aspx" onserverclick="Button1_Click">登出</a></li>
                    <% } %>
                </ul>
            </div>
        </nav>
        <ul class="sidenav" id="mobile-demo">
            <li><a href="Photo.aspx">相簿</a></li>
            <li><a href="lightGallery-master/demo/Photo2.aspx">照片展示</a></li>
            <li><a href="Editor.aspx">編輯器</a></li>
            <li><a href="Flight.aspx">航班</a></li>
            <li><a href="AJAX.aspx">AJAX</a></li>
            <li><a href="Member.aspx">會員管理</a></li>
            <% if (Session["id"] == null) { %>
            <li><a class="waves-effect waves-light btn" href="Login.aspx">登入</a></li>
            <% }else{ %>
            <li><a class="waves-effect waves-light btn" runat="server" href="Login.aspx" onserverclick="Button1_Click">登出</a></li>
            <% } %>
        </ul>

        <div class="container" style="margin-top: 5%">
            <!-- Page Content goes here -->
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="news_id" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" DataFormatString="{0:yyyy/MM/dd}"></asp:BoundField>
                    <asp:HyperLinkField HeaderText="title" DataNavigateUrlFields="news_id" DataNavigateUrlFormatString="NewsDetails.aspx?id={0}" DataTextField="title" DataTextFormatString="{0}"></asp:HyperLinkField>
                    <asp:BoundField DataField="news_id" HeaderText="news_id" ReadOnly="True" InsertVisible="False" SortExpression="news_id" Visible="False"></asp:BoundField>
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" Visible="False"></asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999"></EditRowStyle>

                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
            <br />
            <asp:Button CssClass="btn" ID="Button2" runat="server" Text="新增" OnClick="Button2_Click" />

        </div>

    </form>
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>
    <script>
        $(".dropdown-trigger").dropdown();

        $(document).ready(function () {
            $('.sidenav').sidenav();
        });
    </script>
</body>
</html>
