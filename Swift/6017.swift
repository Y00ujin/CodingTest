// 6016
var input9 = readLine()

var arr1 = input9?.components(separatedBy: " ")

var num3 = arr1?[0]
var num4 = arr1?[1]

var output = "\(num3 ?? "") \(num4 ?? "")"

if output != nil {
    print(output)
}

