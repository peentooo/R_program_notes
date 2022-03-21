#  R语言数组创建使用array()函数，该函数使用向量作为输入参数，可以使用dim设置数组维度。
# array()函数语法格式如下：
# array(data = NA, dim = length(data), dimnames = NULL) # nolint
# 参数说明：
# data向量，数组元素。
# dim数组的维度，默认是一维数组。
# dimnames维度的名称，必须是个列表，默认情况下是不设置名称的。

# 创建两个不同长度的向量
vector1 <- c(5, 9, 3)
vector2 <- c(10, 11, 12, 13, 14, 15)
column_names <- c("COL1", "COL2", "COL3")
row_names <- c("ROW1", "ROW2", "ROW3")
matrix_names <- c("Matrix1", "Matrix2")
# 创建数组，并设置各个维度的名称
array1 <- array(c(vector1, vector2),
    dim = c(3, 3, 2),
    dimnames = list(row_names, column_names, matrix_names)
)
print(array1)
# 显示数组第二个矩阵中第三行的元素
print(array1[3, , 2])
# 显示数组第一个矩阵中第一行第三列的元素
print(array1[1, 3, 1])
# 输出第二个矩阵
print(array1[, , 2])
print("-----------------------------------")

# 操作数组元素
# 由于数组是由多个维度的矩阵组成，所以我们可以通过访问矩阵的元素来访问数组元素
if (TRUE) {
    # 创建两个不同长度的向量
    vector1 <- c(5, 9, 3)
    vector2 <- c(10, 11, 12, 13, 14, 15)
    # 创建数组2
    array2 <- array(c(vector1, vector2), dim = c(3, 3, 2))
    # 创建两个不同长度的向量
    vector3 <- c(9, 1, 0)
    vector4 <- c(6, 0, 11, 3, 14, 1, 2, 6, 9)
    # 创建数组3
    array3 <- array(c(vector1, vector2), dim = c(3, 3, 2))
    # 从数组中创建矩阵
    matrix1 <- array1[, , 2]
    matrix2 <- array2[, , 2]
    # 矩阵相加
    result <- matrix1 + matrix2
    print(result)
    print("-----------------------------------")
}

# 可以使用apply()元素对数组元素进行跨维度计算  apply(x, margin, fun)
# x 数组      margin 数据名称      fun 计算函数
if (TRUE) {
    # 创建两个不同长度的向量
    vector1 <- c(5, 9, 3)
    vector2 <- c(10, 11, 12, 13, 14, 15)

    # 创建数组
    array4 <- array(c(vector1, vector2), dim = c(3, 3, 2))
    print(array4)

    # 计算数组中所有矩阵第一行的数字之和
    result <- apply(array4, c(1), sum)
    print(result)
}