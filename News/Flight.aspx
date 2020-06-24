<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Flight.aspx.cs" Inherits="Flight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Views/css/materialize.min.css" media="screen,projection" />
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>

    <title>航班資訊</title>
</head>
<body>
    <div class="container">
        <form id="form2" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>

                    <h3>航班資訊</h3>
                    <br />
                    <asp:DropDownList CssClass="dropdown-trigger btn #ffffff white" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Start" DataValueField="Start" AutoPostBack="True" Width="50%" ForeColor="Black"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' SelectCommand="SELECT DISTINCT [Start] FROM [Flight]"></asp:SqlDataSource>
                    <br />
                    <br />
                    <asp:DropDownList CssClass="dropdown-trigger btn #ffffff white" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="End" DataValueField="End" Width="50%" ForeColor="Black"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:newsConnectionString %>' SelectCommand="SELECT DISTINCT [End] FROM [Flight] WHERE ([Start] = @Start)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Start" Type="String"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <p style="padding-top:10%">
                        <a id="scale-demo" href="Default.aspx" class="btn-floating btn-large scale-transition"><i class="material-icons">arrow_back</i></a>
                    </p>

                </ContentTemplate>
            </asp:UpdatePanel>


        </form>
    </div>
</body>
</html>


