var_2 <- c("learn", "R")
var_1 <- "123"
var_3 <- 23L
print(ls()) # 查看已定义的变量 "var_1" "var_2" "var_3"
print(ls(all.names = T)) # 列出所有的，包括隐藏
print(ls(pattern = "2")) # 列出包含2的

rm(var_2) # 删除变量

# 输出结果的拼接，cat()函数会在每两个拼接元素之间自动加上空格
cat(var_1, "中有", var_3, "\n") # 123 中有 23
# 输出到文件，相对定位（默认覆盖写入
cat("Ruboo", file = "files/1输出与追加输出.txt")
# 输出到文件，绝对定位（默认覆盖写入
cat("ruboo",
    file = "C:\\Users\\huang\\Desktop\\R_program_notes\\files\\1输出与追加输出.txt"
)
# 输出到文件，追加写入（append=true
cat("GOOGLE", file = "files/1输出与追加输出.txt", append = TRUE)

# 把控制台输出的文字直接输出到文件中去，sink(),需要先调用;spilt = true为控制台同样输出
sink("files/2控制台输出.txt", split = TRUE)
print("12345") # "12345"
sink() # 调用无参数的sink，取消输出到文件
# 追加输出
sink("files/2控制台输出.txt", append = TRUE)
print("678")
sink()

# 从文件读入文字，readLines()
readLines("files/2控制台输出.txt")

# 查看当前工作目录
print(getwd()) # C:/Users/huang/Desktop/R_program
if (FALSE) {
    "
    这是一个多行注释的实例
    注释内容放在单引号或双引号之间
    "
}