# 航班資訊

建立新的航班資料表

* 下拉選單:

  1.起飛
  2.降落

起飛下拉選單開啟 AutoPostBack

## AJAX

原本網頁在送出 post 請求撈資料之後，收到伺服器 respond 要將網頁重整

AJAX 類似開一條新的通道，只取得需要的資料，改變部分的網頁

### 使用方式
工具箱 => AJAX擴充功能

```
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

      要使用 AJAX 傳遞的資料

    </ContentTemplate>
</asp:UpdatePanel>
```
