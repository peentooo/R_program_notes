# R 语言的比较新的版本也支持=作为赋值符
# 优先级       ()括号   》   ^乘方   》   %%整除取余,%/%整除   》   *,/   》   +,-
var_1 <- (9 %/% 2^2 * 2 + 1)^2
print(var_1) # 25

# 关系运算符，结果返回布尔值
if (TRUE) {
    v <- c(2, 4, 6, 9)
    t <- c(1, 4, 7, 9)
    # 对每个元素都判断，输出4个bool值
    print(v > t) # TRUE FALSE FALSE FALSE
    print(v < t) # FALSE FALSE  TRUE FALSE
    print(v == t) # FALSE  TRUE FALSE  TRUE
    print(v != t) # TRUE FALSE  TRUE FALSE
    print(v >= t) # TRUE  TRUE FALSE  TRUE
    print(v <= t) # FALSE  TRUE  TRUE  TRUE
}

# 逻辑运算符
if (TRUE) {
    v <- c(3, 1, TRUE, 2 + 3i)
    t <- c(4, 1, FALSE, 2 + 3i)
    # 对每个元素都判断（ &  |  ! ）
    print(v & t) # TRUE  TRUE FALSE  TRUE
    print(v | t) # TRUE TRUE TRUE TRUE
    print(!v) # FALSE FALSE FALSE FALSE
    # 只对第一个元素判断（ &&  || ）
    vi <- c(3, 0, TRUE, 2 + 2i)
    ti <- c(1, 3, TRUE, 2 + 3i)
    print(vi && ti) # TRUE
    # 0是false
    vii <- c(0, 0, TRUE, 2 + 2i)
    tii <- c(0, 3, TRUE, 2 + 3i)
    print(vii || tii) # FALSE
}

# 其他运算符
if (TRUE) {
    # 1 到 10 的向量
    v <- 1:10
    print(v) # 1 2 3 4 5 6 7 8 9 10
    # 判断数字是否在向量 v 中
    v1 <- 3
    v2 <- 15
    print(v1 %in% v) # TRUE
    print(v2 %in% v) # FALSE
    # 矩阵与它转置的矩阵相乘
    ma <- matrix(c(2, 6, 5, 1, 10, 4), nrow = 2, ncol = 3, byrow = TRUE)
    t <- ma %*% t(ma)
    print(t(ma)) # 转置矩阵
    print(t)
}

# 数学函数
if (TRUE) {
    # 平方根
    print(sqrt(4))
    # e的2次方
    print(exp(2))
    # 底数为2，指数为4
    print(log(2, 4))
    # 相当于lg
    print(log10(100))
}

# 取整函数
if (TRUE) {
    print(round(4.5)) # 四舍五入
    print(round(3.5)) # 取整位是偶数会舍，奇数则遵循真正的“四舍五入”
    print(ceiling(3.4)) # 向上取整，天花板取整
    print(floor(3.8)) # 向下取整，地板砖取整
}