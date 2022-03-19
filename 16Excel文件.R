# 控制台输入以下命令来安装扩展包
# 命令：install.packages("xlsx", repos="https://mirrors.ustc.edu.cn/CRAN/")
# 实际上，完全可以通过CSV与R交互，没必要再使用Excel
# 验证包是否安装
any(grepl("xlsx", installed.packages()))
# 载入包
library("xlsx")
# 读取 5exceltest.xlsx工作表数据
data <- read.xlsx("files/5exceltest.xlsx", sheetIndex = 1)
print(data)