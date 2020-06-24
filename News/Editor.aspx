<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Editor.aspx.cs" Inherits="Editor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="Views/css/materialize.min.css" media="screen,projection" />
    <script type="text/javascript" src="Views/js/materialize.min.js"></script>

    <script src="https://cdn.ckeditor.com/ckeditor5/19.1.1/classic/ckeditor.js"></script>

    <title>CKEditor 5 – Classic editor</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Classic editor</h1>
            <div id="editor">
                    <p>This is some sample content.</p>          
            </div>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
            </p>
            <p>
                <a id="scale-demo" href="Default.aspx" class="btn-floating btn-large scale-transition"><i class="material-icons">arrow_back</i></a>
            </p>
        </div>
        <script>
            ClassicEditor
                .create(document.querySelector('#editor'))
                .catch(error => {
                    console.error(error);
                });
        </script>
    </form>
</body>
</html>
