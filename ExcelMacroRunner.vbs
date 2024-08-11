Set objExcel = CreateObject("Excel.Application")
objExcel.Visible = False
' 执行宏
Set objWorkbook =objExcel.Workbooks.open("C:\Users\USER\Desktop\toolStaus.xlsm")
objExcel.Run "SUMMARY_SELF"
' 等待宏执行完成
WScript.Sleep 10000 ' 等待10秒（调整时间以适应宏执行时间）

' 保存并关闭工作簿
objWorkbook.Save
objWorkbook.Close False

' 退出 Excel
objExcel.Quit

' 清理
Set objWorkbook = Nothing
Set objExcel = Nothing
