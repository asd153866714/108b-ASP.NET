<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Photo.aspx.cs" Inherits="Photo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Views/css/materialize.min.css" media="screen,projection" />

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <title>照片</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 5%">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id" Visible="false"></asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="PhotoDetails.aspx?id={0}" DataTextField="title" HeaderText="title"></asp:HyperLinkField>
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" Visible="false"></asp:BoundField>
                    <asp:BoundField DataField="content" HeaderText="content" SortExpression="content"></asp:BoundField>
                    <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" Visible="false"></asp:BoundField>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>
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
            <p>
                <a id="scale-demo" href="Default.aspx" class="btn-floating btn-large scale-transition">
                    <i class="material-icons">arrow_back</i>
                </a>
            </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' SelectCommand="SELECT * FROM [Photos]"></asp:SqlDataSource>
        </div>
    </form>
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>
</body>
</html>
