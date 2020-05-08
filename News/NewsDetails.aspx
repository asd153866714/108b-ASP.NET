<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsDetails.aspx.cs" Inherits="NewsDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
        #content {
            margin:auto;
            width: 50%;
            position:relative;
        }
    </style>

    <title>公告內容</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="content">
            <asp:DetailsView ID="DetailsView1" runat="server"  AutoGenerateRows="False" DataKeyNames="news_id" DataSourceID="SqlDataSource1" CellPadding="3">

                <Fields>
                    <asp:BoundField DataField="news_id" HeaderText="id" ReadOnly="True" SortExpression="news_id" ></asp:BoundField>
                    <asp:BoundField DataField="title" HeaderText="標題" SortExpression="title"></asp:BoundField>
                    <asp:BoundField DataField="context" HeaderText="內容" SortExpression="context"></asp:BoundField>
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"></FooterStyle>
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" ></HeaderStyle>
                <PagerStyle HorizontalAlign="Center" ></PagerStyle>
                <RowStyle BackColor="#FFF7E7"  ></RowStyle>
            </asp:DetailsView>

            <a href="Default.aspx">返回</a>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [List] WHERE [news_id] = @news_id" InsertCommand="INSERT INTO [List] ([news_id], [title], [context]) VALUES (@news_id, @title, @context)" SelectCommand="SELECT * FROM [List] WHERE ([news_id] = @news_id)" UpdateCommand="UPDATE [List] SET [title] = @title, [context] = @context WHERE [news_id] = @news_id">
                <DeleteParameters>
                    <asp:Parameter Name="news_id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="news_id" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="context" Type="String"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="news_id" Type="Int32"></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="context" Type="String"></asp:Parameter>
                    <asp:Parameter Name="news_id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
