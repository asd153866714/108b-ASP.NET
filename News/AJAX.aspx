<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAX.aspx.cs" Inherits="ajax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AJAX</title>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body style="padding:80px">
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Button ID="Button2" runat="server" Text="Button" />
        </div>
    </form>
    <script>
        $('#Button1').click(function () {
            $(this).css('background-color', 'blue');
        });

        $(function () {
            $("#Button2").click(function () {
                $.ajax({
                    //要用post方式   
                    type: "Post",
                    //方法所在頁面和方法名   
                    url: "ajax.aspx/SayHello",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        //返回的數據用data.d獲取內容   
                        alert('success! ' + data.d);
                    },
                    error: function (err) {
                        alert(err);
                    }
                });

                //禁用按鈕的提交   
                return false;
            });
        });
    </script>
</body>
</html>

