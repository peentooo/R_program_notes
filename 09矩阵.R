# 矩阵里的元素可以是数字、符号或数学式。
# R 语言的矩阵可以使用 matrix() 函数来创建，语法格式如下：
# matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,dimnames = NULL) nolint
# 参数说明：
#           data 向量，矩阵的数据
#           nrow 行数
#           ncol 列数
#           byrow 逻辑值，为 FALSE 按列排列，为 TRUE 按行排列
#           dimname 设置行和列的名称

# byrow 为 TRUE 元素按行排列
ma1 <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(ma1)

# byrow 为 FALSE 元素按列排列
ma2 <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(ma2)

# 定义行和列的名称
rownames <- c("row1", "row2", "row3", "row4")
colnames <- c("col1", "col2", "col3")
ma3 <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames = list(rownames, colnames)) # nolint
print(ma3)
# t()转置矩阵
print(t(ma3))
# 访问矩阵元素
print(ma3[2, 3]) # 获取第二行第三列的元素
print(ma3[2, ]) # 获取第二行的元素
print(ma3[, 3]) # 获取第三列的元素
print(nrow(ma3)) #查看有几行

# 大小相同（行数列数都相同）的矩阵之间可以相互加减
# 相乘当且仅当第一个矩阵的列数等于第二个矩阵的行数
matrix1 <- matrix(c(7, 9, -1, 4, 2, 3), nrow = 2)
print(matrix1)
matrix2 <- matrix(c(6, 1, 0, 9, 3, 2), nrow = 2)
print(matrix2)
# 两个矩阵相加
result <- matrix1 + matrix2
cat("相加结果：", "\n")
print(result)
# 两个矩阵相减
result <- matrix1 - matrix2
cat("相减结果：", "\n")
print(result)
# 两个矩阵相乘(这里指的是每个元素相乘)
result <- matrix1 * matrix2
cat("相乘结果：", "\n")
print(result)
# 两个矩阵相除(这里指的是每个元素相除)
result <- matrix1 / matrix2
cat("相除结果：", "\n")
print(result)

# 真正的矩阵相乘 符号为 %*%

# 行合并
x <- rbind(matrix1, matrix2)
print(x)
# 列合并
x <- cbind(matrix1, matrix2)
print(x)