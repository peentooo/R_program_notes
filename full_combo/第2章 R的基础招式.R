#### 第2章 R君的基础招式######


###### 2.1  对象与变量######
#### 2.1.1 对象#####
# 包含有4个元素的字符型向量
c("北京", "天津", "上海", "重庆")

# 只有一个元素的数值向量
c(1)
# 或者
1

# 包含三个元素的列表
list(c("北京", "天津", "上海", "重庆"), c(1), "Hello World!")

# 函数
function(x, y) {
  x^2 + y^3
}

# 环境
new.env()
#### 2.1.2 变量#####
# 使用"<-"进行赋值
x <- 2

# 使用"="进行赋值
x <- 2
3 -> y
a <- b <- c <- 10
a
b
c
assign("d", 10)
d
for (i in 1:9) {
  name <- paste("z", i, sep = "")
  assign(name, i:10)
}
##### 2.1.3 变量的列举和删除#####
ls()
# 列出所有的变量名(包括隐藏变量)
ls(all.names = T)

# 只列出包含字母“z”的变量名
ls(pattern = "z")
ls.str()
ls()
rm(list = ls())
ls()
###### 2.2  数据类型#########
######## 2.2.2 特殊值######
n <- NULL
n
0 / 0

# c(1,2,3,NA)为一个向量（下一节将介绍），
# 它包含4个元素，其中最后一个元素为NA。
# 求它的平均数将返回NA
mean(c(1, 2, 3, NA))

# 可以调整mean()函数的参数来忽略NA
mean(c(1, 2, 3, NA), na.rm = TRUE)
is.infinite(Inf + 1)
####### 2.3  数据结构#######

##### 2.3.1 向量######
# x为一个“标量”
x <- 1

# 计算x的长度
length(x)

# 判断x是否为向量
is.vector(x)
# 创建一个包含三个双精度元素的数值向量
x <- c(1, 2, 3)
typeof(x)

# 创建一个包含三个整数元素的数值向量
y <- c(4L, 5L, 6L)
typeof(y)
z <- c(x, y)
typeof(z)
x <- numeric(8)
y <- integer(8)
z <- double(8)
x
y
z
1:10
1:-10
seq(from = 1, to = 10)
seq(from = 1, to = -10)

# 创建3到27且步长为3的序列
seq(from = 3, to = 27, by = 3)

# 创建起点为4、长度为10且步长为2的系列
seq(from = 4, by = 2, length.out = 10)
# 生成两个字符串向量
x <- "R is useful."
y <- c("R", "is", "useful", ".")
x
y

# 生成一个逻辑向量
z <- c(TRUE, TRUE, FALSE, FALSE)
z

# 比较字符向量中处于相同位置的元素是否相等
y == c("R", "is", "useful", ".")
x == y
m <- c(apple = 1, banana = 2, cat = 3, 4)
m
n <- c("A", "B", "C", "D")
names(n) <- c("apple", "banana", "", "dog")
n
# 读取向量的元素名称
names(m)
names(n)
names(x) <- LETTERS[1] # 大写字母
x

# 通过正整数选取向量子集
x[1]
x[4:8]

# 若正整数重复了一次，则元素也会重复一次
x[c(10, 10)]

# 若方括号为小数，则会先截尾再选取子集
x[c(5.3, 5.9)]

# 通过负整数选取不包含相应元素的子集
x[-c(12:20)]

# 但方括号中不能同时包含正整数和负整数
# x[c(13, -18)]    报错 # nolint

# 通过逻辑向量选取子集
y <- c(rep(TRUE, 10), rep(FALSE, 16))
y
x[y]
z <- x > 20
z
x[z]

# 通过元素名称选取向量子集
x[c("E", "L", "O")]
# m是数字字符“10”
m <- "10"

# n是数值3
n <- 3

# 两者求和运算会如何？
# m + n    报错 # nolint

# 使用as.numeric将m强制转换为数值
m <- as.numeric(m)
m + n
# 逻辑向量加数值向量
TRUE + 1

# 字符向量加数值向量
# "1" + 1    报错
###### 2.3.2 矩阵和数组########
# 创建一个3行4列的数值向量，
# nrow和ncol通常只需设置其中一个即可
x <- matrix(1:12, nrow = 3, ncol = 4)
x

# 创建三维数组，第一维长度为4，第二维长度为3，第三维长度为2
y <- array(letters[1:24], dim = c(4, 3, 2))
y
diag(x = 1, nrow = 6)
dim(x)
dim(y)

# nrow()和ncol()函数分别表示行数和列数
nrow(x)
ncol(x)

# dim()函数用于向量时，将返回NULL
dim(c(2, 4, 6))
# 在创建数组时，通过dimnames参数设定名称
# dimnames参数接受列表这种数据结构，列表将在本章后面部分介绍
# 矩阵的命名方式与此相同
z <- array(1:24,
  dim = c(4, 3, 2),
  dimnames = list(
    c("row1", "row2", "row3", "row4"),
    c("col1", "col2", "col3"),
    c("第一组", "第二组")
  )
)
z
z <- array(1:24, dim = c(4, 3, 2))
rownames(z) <- c("row1", "row2", "row3", "rows")
colnames(z) <- c("col1", "col2", "col3")
z
dimnames(z) <- list(
  c("row1", "row2", "row3", "rows"),
  c("col1", "col2", "col3"),
  c("第一组", "第二组")
)
z
o <- z[c(2, 3), 2, 1]
p <- z[c(-1, -4), 2, 1]
q <- z[c(2, 3), c(FALSE, TRUE, FALSE), c(TRUE, FALSE)]
r <- z[c("row2", "row3"), "col2", "第一组"]
identical(o, p)
identical(p, q)
identical(q, r)
x <- matrix(1:12, 3, 4)
# 取矩阵的一行
x1 <- x[1, ]

# 取矩阵的一列
x2 <- x[, 1]

is.vector(x1)
is.vector(x2)
x3 <- x[1, , drop = FALSE]
x3
is.matrix(x3)
x4 <- x[, 1, drop = FALSE]
x4
is.matrix(x4)
x <- c(7, 7, 7, 3, 3, 3, 1, 1, 1)
fct <- factor(x)
fct
levels(fct)
gl(n = 3, k = 3)
str(fct)
fct1 <- fct
# fct1[10] <- 20    因子层次有错，产生了NA
fct1
fct2 <- fct3 <- fct
# 将新加入的元素变为7
fct2[10] <- 7
fct2

# 先改变因此的水平，在加入原水平以外的元素
levels(fct3) <- c(levels(fct3), 20, 30)
fct3
fct3[c(10, 11)] <- c(20, 30)
fct3
choices <- c("非常同意", "同意", "不确定", "不同意", "非常不同意")
# 有放回地抽取choices中的元素，重复100次
results <- sample(choices, 100, replace = TRUE)

# R默认的因子水平顺序
fct4 <- factor(results)
levels(fct4)

# 生成有序因子
fct5 <- ordered(results, levels = choices)
levels(fct5)
# 选取fct5中没有“不确定”的子集
fct6 <- fct5[!(fct5 %in% "不确定")]

# 计算fct6的长度
length(fct6)

# 查看fct6的因子水平
levels(fct6)
# 去掉没有使用的因子水平
fct7 <- droplevels(fct6)
levels(fct7)
# 2.3.4 列表
l <- list("电视机", "日本", FALSE, 10000)
l
l1 <- list("电视机", "日本", FALSE, 10000)
names(l1) <- c("商品名", "进口国", "是否打折", "价格")

l2 <- list(`商品名` = "电视机", `进口国` = "日本", `是否打折` = FALSE, `价格` = 10000)
l2
identical(l1, l2)
l3 <- list(
  `分量1` = seq(10, 30, by = 3),
  `分量2` = month.name,
  `分量3` = matrix(LETTERS[-c(25, 26)], 4, 6),
  `分量4` = l2
)

# 列表的分量数量，或者列表的长度
length(l3)

# l3具体内容
l3
# 使用[]提取列表的子集
l3[1]
l3["分量2"]
l3[c(FALSE, FALSE, TRUE, TRUE)]

is.list(l3[2])
# 使用[[]]提取列表的子集
l3[[1]]
# l3[[c(FALSE, FALSE, TRUE, TRUE)]]  attempt to select less than one element in integerOneIndex # nolint
is.matrix(l3[["分量3"]])

# 使用$提取列表的子集
is.matrix(l3$`分量3`)
l3$`分量1` <- 1:5
l3$`分量5` <- letters[1:15]
l3[c("分量2", "分量3")] <- NULL
l3
# 2.3.5 数据框
df1 <- data.frame(
  name = c("张三", "李四", "王五"),
  gender = c("男", "男", "女"),
  age = c(19, 18, 18),
  major = c("经济学", "路桥工程", "心理学")
)
df1
df1$name
df1 <- data.frame(
  name = c("张三", "李四", "王五"),
  gender = c("男", "男", "女"),
  age = c(19, 18, 18),
  major = c("经济学", "路桥工程", "心理学"),
  stringsAsFactors = FALSE
)
df1$name
# 将列表拯转化为数据框
m <- list(x = 1:5, y = 6:10)
m <- as.data.frame(m)

# 将矩阵转化为数据框
n <- matrix(1:12, 3, 4)
n <- as.data.frame(n)
dimnames(m) <- list(
  c("row1", "row2", "row3", "row4", "row5"),
  c("col1", "col2")
)
m
rownames(n) <- c("row1", "row2", "row3")
colnames(n) <- c("col1", "col2", "col3", "col4")
n
df1[2:3, -2]
df1[c(FALSE, TRUE, TRUE), c("name", "major")]
df1[, "major"]

df1[, "major", drop = FALSE]
df1["age"]
df1[["age"]]
df1$age
# 2.3.6 它们都是向量
# 分别创建一个字符向量、矩阵和列表
x <- rep("R", 10)
y <- matrix(1:12, 3, 4)
z <- list(x = 1, y = "R")
u <- as.data.frame(y)

# 查看类型属性
typeof(x)
typeof(y)
typeof(z)
typeof(u)

# 查看长度
length(x)
length(y)
length(z)
length(u)
x <- 1:5
attributes(x)
names(x) <- letters[1:5]
attributes(x)
attr(x, "name")
x <- gl(3, 2)
attributes(x)

# 对因子命名后，就会多一个名字属性
names(x) <- letters[1:6]
attributes(x)
x <- 1:27
dim(x) <- c(3, 3, 3)
x
attributes(x)
x <- list(a = 6:9, b = c("O", "P", "Q"), c = c(TRUE, FALSE))
attributes(x)

# 可以用 c ()函数将多个列表组合成一个列表
y <- list(d = matrix(month.name, 3, 4))
z <- c(x, y)
z
x <- list(a = 1:3, b = 4:6)
unlist(x)

# 如果列表中分量数据类型不同， unlist ()函数将采取强制转换
y <- list(a = c(TRUE, TRUE, FALSE), b = 2:7)
unlist(y)
x <- list(a = 1:3, b = 4:6)
attributes(x)
y <- as.data.frame(x, row.names = NULL)
attributes(y)
x <- 1:10
is.vector(x, mode = "numeric")
y <- list(1:3, 4:6)
is.vector(y, mode = "list")
x <- gl(3, 3)
y <- matrix(1:12, 3, 4)
z <- as.data.frame(y)
is.vector(x, mode = "any")
is.vector(y, mode = "any")
is.vector(z, mode = "any")
is.atomic(x)
is.atomic(y)
is.recursive(z)
###### 2.4  数学运算#####
######## 2.4.1 基础运算#######
x <- 13
y <- 20

# 四则运算
x + y
x - y
x * y
y / x

# 求模
y %% x

# 整除
x %/% y

# 取绝对值
abs(-y)
x <- 3
y <- 4
z <- 2

# 指数运算
x^z
y^1 / z
sqrt(y) # 由于z等于2，所以y的平方根，即sqrt(y)，与y^1/z的结果相等
x^z + y^1 / z
exp(x) # 取自然常数e的三次方

# 对数运算
log(x) # log()函数默认条件下以自然常数e为底
log(x, base = 3) # 可通过base参数改变对数的底
log10(x) # 以10为底x的对数
log2(x) # 以2为底x的对数
x <- 20
y <- 18
z <- "20"
# 比较
x == y
as.character(x) != z
x > y
y <= as.integer(z)
identical(y, as.double(19))
x <- 3
y <- 4
z <- 2

# 乘除运算优先于加减预算
identical(
  x * y + y * z,
  (x * y) + (y * z)
)

# 指数运算优先于四则运算
identical(
  x^z + y^1 / z,
  (x^z) + (y^(1 / z))
)

# 计算操作符优先于比较操作符
identical(
  x + y > y + z,
  (x + y) > (y + z)
)
###### 2.4.2 向量运算#######
x <- 1:5
y <- 6:10

# 四则运算
x + y
x + 1 # 当向量与一个标量进行相应计算式，将采用循环补齐的方式进行

# 指数运算
x^y

# 逻辑运算
x == y
identical(x, y)
# 生成100个服从标准正态分布的随机数
x <- rnorm(100)

# 平均数、标准差、求和以及求积
mean(x)
sd(x)
sum(x)
prod(x)

# 最小值、最大值以及全距
min(x)
max(x)
range(x)

# 四分位数
quantile(x, probs = c(0.25, 0.50, 0.75))
x <- c("东", "南", "上", "下", "东", "南")
y <- c("上", "下", "左", "右")

# 组合与排列
choose(6, 3) # 组合数
factorial(3) # 3的阶乘3！
choose(6, 3) * factorial(3) # 排列数

# 取并集
union(x, y)

# 取交集
intersect(x, y)

# 取差集
setdiff(x, y)

# 取唯一值
unique(x)

# 检查x中哪些元素在y中
x %in% y
######### 2.4.3 矩阵运算#########
x <- matrix(
  c(1, 0.5, 0.33, 0.5, 0.33, 0.25, 0.33, 0.25, 0.2),
  3, 3
)
y <- matrix(1:12, 3, 4)
x
y

# 转置
t(x)

# 矩阵乘积
x %*% y

# 逆矩阵
solve(x)

# 求行列式
det(x)
eigen(x) # 求特征值和特征向量