# 数据框（Data frame）可以理解成我们常说的"表格"。
# 数据框是R语言的数据结构，是特殊的二维列表。
# 数据框每一列都有一个唯一的列名，长度都是相等的，同一列的数据类型需要一致，不同列的数据类型可以不一样。
# 语法格式如下：
# data.frame(…,
#            row.names = NULL,
#            check.rows = FALSE,
#            check.names = TRUE,
#            fix.empty.names = TRUE,
#            stringsAsFactors = default.stringsAsFactors())

# …: 列向量，可以是任何类型（字符型、数值型、逻辑型），一般以 tag = value 的形式表示，也可以是 value。
# row.names: 行名，默认为 NULL，可以设置为单个数字、字符串或字符串和数字的向量。
# check.rows: 检测行的名称和长度是否一致。
# check.names: 检测数据框的变量名是否合法。
# fix.empty.names: 设置未命名的参数是否自动设置名字。
# stringsAsFactors:布尔值，字符是否转换为因子
#                  factory-fresh的默认值是TRUE，可以通过设置选项（stringsAsFactors=FALSE）来修改。

# 创建简单数据框
table1 <- data.frame(
    姓名 = c("张三", "李四", "王五"),
    工号 = c("001", "002", "003"),
    月薪 = c(21000, 25000, 29000)
)
print(table1) # 查看数据
print(str(table1)) # 查看数据结构
print(summary(table1)) # 显示概要

# 提取指定的列
name_and_salary <- data.frame(table1$姓名, table1$月薪)
print(name_and_salary)
# 提取第一行和第三行
row_1_3 <- table1[c(1, 3), ]
print(row_1_3)
# 读取第 2 、3 行的第 1 、2 列数据：
row23_col12 <- table1[c(2, 3), c(1, 2)]
print(row23_col12)

# 扩展数据框
table1$部门 <- c("市场", "运营", "技术")
print(table1)

# 使用cbind()函数将多个向量合成一个数据框         cbind()为列合并
if (TRUE) {
    sites <- c("Google", "Runoob", "Taobao")
    likes <- c(222, 111, 123)
    url <- c("www.google.com", "www.runoob.com", "www.taobao.com")
    addresses <- cbind(sites, likes, url)
    print(addresses)
}

# 如果要对两个数据框进行合并可以使用rbind()函数    rbind()为行合并
if (TRUE) {
    table2 <- data.frame(
        姓名 = c("赵六", "孙七"),
        工号 = c("004", "005"),
        月薪 = c(33000, 37000),
        部门 = c("公关", "技术")
    )
    newtable12 <- rbind(table1, table2)
    print(newtable12)
}

# list 转化为数据框
m <- list(x = 1:5, y = 6:10)
m <- as.data.frame(m)
print(m)
# 矩阵转化为数据框
n <- matrix(1:12, 3, 4)
n <- as.data.frame(n)
print(n)