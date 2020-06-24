<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PhotoDetails.aspx.cs" Inherits="PhotoDetails" %>

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
    <title>照片資料</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="20%" Width="100%" AutoGenerateRows="False" DataSourceID="SqlDataSource1" DataKeyNames="Id" OnItemInserting="DetailsView1_ItemInserting" OnItemUpdating="DetailsView1_ItemUpdating" OnItemInserted="DetailsView1_ItemInserted" OnItemDeleted="DetailsView1_ItemDeleted">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True"></asp:BoundField>
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title"></asp:BoundField>
                    <asp:BoundField DataField="content" HeaderText="content" SortExpression="content"></asp:BoundField>
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>
                    <asp:BoundField DataField="path" HeaderText="path" SortExpression="path" Visible="false" ></asp:BoundField>
                    <asp:TemplateField HeaderText="Image">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image runat="server" ImageUrl='<%# Eval("path") %>' ID="Image1" Height="30%"></asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowInsertButton="True" ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                    <asp:HyperLinkField NavigateUrl="~/Photo.aspx" Text="返回" HeaderText="功能"></asp:HyperLinkField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' SelectCommand="SELECT * FROM [Photos] WHERE ([id] = @id)" DeleteCommand="DELETE FROM [Photos] WHERE [id] = @id" InsertCommand="INSERT INTO [Photos] ([title], [content], [path], [date]) VALUES (@title, @content, @path, @date)" UpdateCommand="UPDATE [Photos] SET [title] = @title, [content] = @content, [path] = @path, [date] = @date WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="path" Type="String"></asp:Parameter>
                    <asp:Parameter Name="date" Type="DateTime"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="id" Type="Int32"></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="path" Type="String"></asp:Parameter>
                    <asp:Parameter Name="date" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>
</body>

</html>
