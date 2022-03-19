# R 语言提供了以下类型的判断语句：  if语句    if...else语句    switch语句

# if
num1 <- 50L
if (is.integer(num1)) {
    print("num1 是一个整数")
}

# if...else
vec1 <- c("google", "runoob", "taobao")
if ("weibo" %in% vec1) {
    print("第一个 if 包含 weibo")
} else if ("runoob" %in% vec1) {
    print("第二个 if 包含 runoob")
} else {
    print("没有找到")
}

# switch(expression, case1, case2, case3....)语法格式
# switch 语句必须遵循下面的规则：
# nolint switch 语句中的 expression 是一个常量表达式，可以是整数或字符串，如果是整数则返回对应的 case 位置值，如果整数不在位置的范围内则返回 NULL
# 如果匹配到多个值则返回第一个。
# expression如果是字符串，则对应的是 case 中的变量名对应的值，没有匹配则没有返回值。
# switch 没有默认参数可用。

cs1 <- switch(3,
    "google",
    "runoob",
    "taobao",
    "weibo"
)
print(cs1)

# 如果整数不在范围内的则返回 NULL
print(switch(4,
    "google",
    "runoob",
    "taobao"
))

# 如果是字符串则返回字符串变量对应的值
you_like <- "runoob"
cs2 <- switch(you_like,
    google = "www.google.com",
    runoob = "www.runoob.com",
    taobao = "www.taobao.com"
)
print(cs2)