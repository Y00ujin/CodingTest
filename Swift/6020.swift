
// 6019
var input12 = readLine()

var arr2 = input12?.components(separatedBy: ".")

if input12 != nil{
    for i in (0...2).reversed(){
        if i != 0{
            print(arr2?[i] ?? "", "", separator : "-", terminator: "")

        }else{
            print(arr2?[i] ?? "", "", terminator: "")

        }
    }
}

