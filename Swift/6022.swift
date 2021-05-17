// 6021
var input14 = readLine()

if input14 != nil{
    for i in 0...input14!.count-1{
        var a = input14!.index(input14!.startIndex, offsetBy: i)
        print(input14![a])
    }
}
