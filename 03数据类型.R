# 按对象类型来分是以下6种
# 向量（vector） 列表（list） 矩阵（matrix） 数组（array） 因子（factor) 数据框（data.frame)

# 向量
if (TRUE) {
    a <- c(3, 4, 7, 9)
    b <- c(5, 0, 5, 4)
    print(a + b) # 向量相加    8 4 12 13
    print(a[2]) # a向量的第二个元素    4
    print(a[1:3]) # 取出第1到3项    3 4 7
    print(a[c(1, 2, 4)]) # 取出第1,2,4项    3 4 9
    print(a^2) # 每个元素都平方    9 16 49 81
    print(a - 3) # 每个元素都减3    0 1 4 6
    print(sort(a)) # 从小到大排序    3 4 7 9
    print(rev(a)) # 从大到小排序    9 7 4 3
    print(a[order(a)]) # order()函数返回的是一个向量排序之后的下标向量
    # sum	求和
    # mean	求平均值
    # var	方差
    # sd	标准差
    # min	最小值
    # max	最大值
    # range	取值范围（二维向量，最大值和最小值）
    print(sd(1:5)) # 1,2,3,4,5 的标准差
    # 向量生成
    print(c(1:5)) # 生成1到5
    print(seq(1, 11, 2)) # 等差数列    1 3 5 7 9 11 公差为2
    print(seq(2, 8, length.out = 4)) # 等差数列 2 4 6 8 数量为4个
    print(rep(4, 6)) # 4 4 4 4 4 4
    print(c(NA, NA, NULL, NA, NULL)) # NULL没有意义
    print(length(c(NA, NULL))) # 1
    #
    # 逻辑向量
    verc3 <- c(1, 2, 3, 4, 5, 6)
    print(verc3 > 3) # FALSE FALSE FALSE TRUE TRUE TRUE
    print(which(verc3 %% 2 == 0)) # which筛选选择作用    2 4 6
    print(which(verc3 >= 3 & verc3 <= 5)) # 3 4 5
    # all() 用于检查逻辑向量是否全部为 TRUE，any() 用于检查逻辑向量是否含有 TRUE
    print(c(all(c(TRUE, TRUE)), all(c(TRUE, FALSE)))) # TRUE FALSE
    print(c(any(c(TRUE, FALSE)), any(c(FALSE, FALSE)))) # TRUE FALSE
}

# 字符串的操作函数
if (TRUE) {
    print(toupper("Numb")) # 转换为大写    NUMB
    print(tolower("Numb")) # 转换为小写    numb
    print(nchar("数据类型", type = "bytes")) # 统计字节长度    8
    print(nchar("数据类型", type = "chars")) # 统计字符数量    4    默认为字符数量
    print(substr("1234567890", 2, 6)) # 从2到6截取字符串    "23456"
    print(substring("1234567890", 5)) # 截取字符串，从 5 到结束    "5678790"
    print(as.numeric("12")) # 将字符串转换为数字    12
    print(as.character(12.34)) # 将数字转换为字符串    "12.34"
    print(strsplit("2022;03;15", ";")) # 分隔符拆分字符串    "2022" "03" "15"
    print(gsub("/", "-", "2022/03/15")) # 替换字符串    "2022-03-15"
}

# 矩阵1
if (TRUE) {
    vector <- c(1, 2, 3, 4, 5, 6)
    print(matrix(vector, 2, 3)) # 按列填充
    print(matrix(vector, 2, 3, byrow = TRUE)) # 以行填充
    m1 <- matrix(vector, 2, 3, byrow = TRUE)
    print(m1[2, 3]) # 第二行第三列 6
    colnames(m1) <- c("x", "y", "z") # 改变列名
    rownames(m1) <- c("a", "b") # 改变行名
    print(m1)
    print(m1["a", ]) # 行名为a的元素
    m3 <- matrix(c(1, 2), 1, 2)
    m4 <- matrix(c(3, 4), 2, 1)
    m6 <- m3 %*% m4 # %*%矩阵相乘
    print(m6)
    m7 <- matrix(c(1, 3, 2, 4), 2, 2)
    print(solve(m7)) # solve()逆矩阵
    print(m7 %*% solve(m7))
    print(apply(m7, 1, sum)) # 第二个参数为 1 按行操作 1+2 3+4
    print(apply(m7, 2, sum)) # 第二个参数为 2 按列操作 1+3 2+4
}