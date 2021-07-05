var input15 = readLine()

var arr = input15?.split(separator: " ")
if input15 != nil{
    let firstNum = arr![arr?.startIndex ?? 0]
    let secondNum = arr![arr!.startIndex+1]
    
    print(firstNum, secondNum)
    print(Int(firstNum)!+Int(secondNum)!)
}