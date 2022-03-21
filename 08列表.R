# 创建一个列表
listex1 <- list(
    "runoob",
    c("Google", "Runoob", "Taobao"),
    matrix(c(1, 2, 3, 4, 5, 6), nrow = 2),
    list("runoob", 12.3),
    2L
)
print(listex1)
print("----------------------------------")

# names()给列表元素命名
names(listex1) <- LETTERS[1:5]
print(listex1)
# 访问列表的第三个元素
print(listex1[3])
# 访问第二个向量元素
print(listex1$B)

# 我们可以对列表进行添加、删除、更新的操作
print("-----我们可以对列表进行添加、删除、更新的操作-----")
# 添加元素
listex1[6] <- "我来组成第六个元素"
print(listex1)
# 删除元素
listex1[6] <- NULL
print(listex1[6])
# 替换元素
listex1[5] <- "我才是第五元素"
print(listex1)

# 用c函数将多个列表合并为一个列表
listex2 <- c(list(1, 2), list("A", "B"))
print(listex2)

# 列表转换为向量，unlist(),方便进行算数运算
# 创建列表
list1 <- list(1:5)
print(list1)
list2 <- list(10:14)
print(list2)
# 转换为向量
v1 <- unlist(list1)
v2 <- unlist(list2)
print(v1)
print(v2)
# 两个向量相加
result <- v1 + v2
print(result)