# 一些字符串操作参考  "03数据类型.R"
a <- "使用单引号"
print(a)

b <- "使用双引号"
print(b)

c <- "双引号字符串中可以包含单引号（'） "
print(c)

d <- '单引号字符串中可以包含双引号（"） '
print(d)

# ... - 表示要组合的任何数量的参数。
# sep - 表示参数之间的分隔符。它是任选的。
# collapse - 用于消除两个字符串之间的空间。
print(paste(letters[1:6], 1:6, sep = "", collapse = "="))
print(paste(letters[1:6], 1:6, collapse = "."))

# format() 函数用于格式化字符串，format() 可作用于字符串或数字。
# nolint format(x,digits,nsmall,scientific,width,justify=c("left","right","centre","none"))
# 参数说明：
# x ：输入对向量
# digits ： 显示的位数
# nsmall ： 小数点右边显示的最少位数
# scientific ： 设置科学计数法
# width ： 通过开头填充空白来显示最小的宽度
# justify：设置位置，显示可以是左边、右边、中间等。

# 显示 9 位，最后一位四舍五入
print(format(12.123456789, digits = 9))
# 使用科学计数法显示
print(format(c(123400000, 0.001, 3)), scientific = TRUE)
# 小数点右边最小显示 5 位，没有的以 0 补充
print(format(12.34, nsmall = 5))
# 将数字转为字符串
print(format(6))
# 宽度为 6 位，不够的在开头添加空格
print(format(12.3, width = 6))
# 左对齐字符串
print(format("Runoob", width = 9, justify = "l"))
# 居中显示
print(format("1234", width = 10, justify = "c"))