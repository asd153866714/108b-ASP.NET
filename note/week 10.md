## Member Detail 編輯

步驟：

1. DetailView 工作 

2. 編輯欄位

3. 選擇欄位名稱 (密碼,生日...)

4. 改為 TemplateField

顯示 Item
編輯 Edit
新增 Insert

```
// 雙向模式 無法做運算
Text='<%# Bind("birth") %>'   

// 可以做運算 單向
Eval()
```

重新設定 DataSource 

where

user_id

querystring

id

分頁 ?id=bill

進階模式

問題 : 編輯，刪除，新增的功能指出現在 登入者 和 user_id 相同的表格 
