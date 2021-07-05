// 6024
var input15 = readLine()

var arr = input15?.split(separator: " ")
if input15 != nil{
    for i in 0...arr!.count-1{
        if(i<2){
            print(arr?[i] ?? "", terminator: "")
        }
    }
}