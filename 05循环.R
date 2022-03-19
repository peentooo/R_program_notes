# R语言提供的循环类型有:     R语言提供的循环控制语句有:
# repeat循环                break语句
# while循环                 Next语句
# for循环

# repeat {
#     if(condition) {
#           break
#       }
# }
ex1 <- 1
repeat{
    print(ex1)
    ex1 <- ex1 + 1
    if (ex1 >= 5) {
        break
    }
}

# while(condition)
# {
#     statements
# }
ex2 <- 1
while (ex2 <= 8) {
    print(ex2)
    ex2 <- ex2 + 1
}

# for (value in vector) {
#     statements
# }
# R语言的for循环特别灵活，可循环整数变量，可对字符向量，逻辑向量，列表等数据类型进行迭代
ex3 <- LETTERS[1:4]
for (i in ex3) {
    print(i)
}
print("-----------------")

# 循环控制
# R语言的break语句插入在循环体中，用于退出当前循环或语句，并开始脚本执行紧接着的语句。
# 如果你使用循环嵌套，break语句将停止最内层循环的执行，并开始执行的外层的循环语句。
# break也常用于switch语句中。
ex4 <- 1:3
for (i in ex4) {
    for (j in ex4) {
        print(j)
        if (j == 2) { # ==2时不再输出，执行外层循环
            break
        }
    }
}

# next语句用于跳过当前循环，开始下一次循环（类似其他语言的continue）
ex5 <- letters[1:5]
for (i in ex5) {
    if (i == "D") { # D 不会输出，跳过这次循环，进入下一次
        next
    }
    print(i)
}