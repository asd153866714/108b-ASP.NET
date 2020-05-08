<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateNews.aspx.cs" Inherits="CreateNews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style>
        body {
            padding:80px;
        }

        input[type=text] {
            width:500px;
            padding:10px;
        }
        
        textarea {
            width:500px;
            height:300px;
            padding:10px;
        }
    </style>
    <title>新增頁面</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>新增一則公告</h1>

            <div>
                <input id="Text1" runat="server" type="text" placeholder="id" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Text1" ErrorMessage="id不可為空白" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />
            </div>
            <div>
                <input id="Text2" runat="server" type="text" placeholder="標題" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Text2" ErrorMessage="標題不可為空白" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />
            </div>
            <div>
                <textarea id="TextArea1" runat="server" cols="20" rows="20" placeholder="內容"></textarea>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextArea1" ErrorMessage="內容不可為空白" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </div>

            <asp:Button ID="Button1" runat="server" Text="新增" OnClick="Button1_Click" />
            <p><a href="Default.aspx">返回</a></p>
            
        </div>
    </form>
</body>
</html>
