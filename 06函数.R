# R 语言中的函数定义使用 function 关键字，一般形式如下：
# function_name <- function(arg_1, arg_2, ...) {
#     // 函数体
# }
# 说明：
# function_name : 为函数名
# arg_1, arg_2, ... : 形式参数列表
# 函数返回值使用 return()。

# R语言提供了很多有用的内置函数，例如：seq(),mean(),max(),sum(x)以及paste(...)等。

# 输出  32 到 44 到的所有数字
print(seq(32, 44))
# 计算几个数的平均值
print(mean(c(25, 82, 35, 67, 8, 23, 91, 5)))
# 计算 41 到 68 所有数字之和
print(sum(41:68))
print(paste("how", "are you", sep = "-", collapse = NULL))
# ... - 表示要组合的任何数量的参数。
# sep - 表示参数之间的分隔符。它是任选的。
# collapse - 用于消除两个字符串之间的空间。

# 自定义函数，可带参数可不带参数
square_num <- function(a) {
    for (i in 1:a) {
        b <- i^2
        print(b)
    }
}
square_num(6)

# 函数参数，可以按函数创建时的顺序来传递，也可以不按顺序，但需要指定参数名
calabc <- function(a, b, c) {
    print(a * b^c)
}
calabc(1, 2, 3)
a <- 2
print(a + calabc(b = 2, a = 1, c = 3))

# 函数创建时也可以为参数指定默认值，如果调用的时候不传递参数就会使用默认值
squplab <- function(a = 1, b = 1) {
    print(a^2 + b^2)
}
squplab()
squplab(3, 4)