// 6023
var input15 = readLine()

if input15 != nil{
    for i in 0...input15!.count-1{
        let a = input15!.index(input15!.startIndex, offsetBy: i)
        
        if i % 2 != 0{
            print(input15![a], terminator: " ")
        }else {
            print(input15![a], terminator: "")
        }
    }
}