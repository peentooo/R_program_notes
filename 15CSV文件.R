# CSV（Comma-Separated Values，CSV，有时也称为字符分隔值因为分隔字符也可以不是逗号）
# CSV是一种非常流行的表格存储文件格式,这种格式适合储存中型或小型数据规模的数据。
# 由于大多数软件支持这个文件格式，所以常用于数据的储存与交互。
# CSV 本质是文本，它的文件格式极度简单：数据一行一行的用文本保存起来而已，每条记录被分隔符分隔为字段，每条记录都有同样的字段序列。
# CSV文件最后一行需要保留一个空行，不然执行程序会有警告信息。

# 读取csv文件
csvtest1 <- read.csv("files/3csvtest1.csv", encoding = "UTF-8")
print(csvtest1)
# read.csv()函数返回的是数据框
print(is.data.frame(csvtest1)) # 查看是否是数据框
print(ncol(csvtest1)) # 列数
print(nrow(csvtest1)) # 行数
# 查找likes最大的数据
likemax <- max(csvtest1$likes)
print(likemax)
# 查找likes为 222 的数据
retval <- subset(csvtest1, likes == 222)
print(retval)
# 将likes为222的数据保存到 likes222.csv文件
write.csv(retval, "files/4likes222.csv", row.names = FALSE)
# row.names=FALSE 相当于去掉第一列奇怪的东西