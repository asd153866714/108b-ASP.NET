﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsDetails.aspx.cs" Inherits="NewsDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Views/css/materialize.min.css" media="screen,projection" />
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>

    <style>
        body {
            padding: 40px;
        }
    </style>

    <title>公告內容</title>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="news_id" DataSourceID="SqlDataSource1" Width="100%">
                <Fields>
                    <asp:TemplateField HeaderText="news_id" InsertVisible="False" SortExpression="news_id">
                        <EditItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("news_id") %>' ID="Label1"></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("news_id") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="date" SortExpression="date">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("date", "{0:yyyy/MM/dd}") %>' Width="100%" ID="TextBox1"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("date", "{0:yyyy/MM/dd}") %>' Width="100%" ID="TextBox1"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("date", "{0:yyyy/MM/dd}") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="title" SortExpression="title">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("title") %>' Width="100%" ID="TextBox2"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("title") %>' Width="100%" ID="TextBox2"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("title") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="content" SortExpression="content">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("content") %>' Width="100%" Height="150" TextMode="MultiLine" ID="TextBox3"></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("content") %>' Width="100%" Height="150" TextMode="MultiLine" ID="TextBox3"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("content") %>' ID="Label4"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>

                    <asp:TemplateField>

                        <InsertItemTemplate>
                            <asp:LinkButton runat="server" Text="插入" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>
                            <a href="Default.aspx">取消</a>
                        </InsertItemTemplate>

                        <ItemTemplate>
                            <asp:HyperLink runat="server" NavigateUrl="~/Default.aspx" Text="返回"></asp:HyperLink>
                        </ItemTemplate>

                    </asp:TemplateField>

                </Fields>
            </asp:DetailsView>

            

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' OnDeleted="SqlDataSource1_Inserted" OnInserted="SqlDataSource1_Inserted"  SelectCommand="SELECT * FROM [News] WHERE ([news_id] = @news_id)" DeleteCommand="DELETE FROM [News] WHERE [news_id] = @news_id" InsertCommand="INSERT INTO [News] ([title], [content], [date]) VALUES (@title, @content, @date)" UpdateCommand="UPDATE [News] SET [title] = @title, [content] = @content, [date] = @date WHERE [news_id] = @news_id">
                <DeleteParameters>
                    <asp:Parameter Name="news_id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="date" Type="DateTime"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="news_id" Type="Int32" DefaultValue=""></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="date" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="news_id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
