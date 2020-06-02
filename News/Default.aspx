<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="/View/css/Home.css" >
    <style>
        body {
            padding:40px;
        }


    </style>

    <title>Home</title>
</head>

<body>
    <form id="form1" runat="server">

        <div>
            <ul class="p-nested-dropdowns">
                <li>Home</li>
                <li>Products</li>
                <li>About</li>
                <li style="margin-left:auto">
                    <div style="width:100px" >Patterns</div>
                    <!-- First level sub dropdown -->
                    <ul>
                        <li>Layout</li>
                        <li>Input</li>
                        <li>Display</li>
                        <li>Feedback</li>
                    </ul>
                </li>
            </ul>
        </div>

        <div style="display: flex;padding-top: 40px">
            <!-- Sidebar -->
            <aside style="width: 10%">
                <ul class="sidebar">
                    <li>Home</li>
                    <li>Products</li>
                    <li>About</li>
                    <li>Patterns </li>
                </ul>
            </aside>

            <!-- Main -->
            <main style="
                /* Take the remaining width */
                flex: 1;

                /* Make it scrollable */
                overflow: auto;
                padding-left: 80px;
            ">

            <div>

                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="news_id" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" DataFormatString="{0:yyyy/MM/dd}"></asp:BoundField>
                        <asp:HyperLinkField HeaderText="title" DataNavigateUrlFields="news_id" DataNavigateUrlFormatString="NewsDetails.aspx?id={0}" DataTextField="title" DataTextFormatString="{0}"></asp:HyperLinkField>
                        <asp:BoundField DataField="news_id" HeaderText="news_id" ReadOnly="True" InsertVisible="False" SortExpression="news_id" Visible="False"></asp:BoundField>
                        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" Visible="False"></asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                    <RowStyle BackColor="#E3EAEB"></RowStyle>

                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
                <br />
                <asp:Button ID="Button2" runat="server" Text="新增" OnClick="Button2_Click" />
            </div>


            </main>
        </div>

    </form>
</body>
</html>
