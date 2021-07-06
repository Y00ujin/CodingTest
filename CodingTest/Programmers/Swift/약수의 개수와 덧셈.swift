

func solution(_ left: Int, right: Int) -> Int {

    var left = 24
    var right = 27
    var count = 0
    var result: Int = 0

    for i in left...right{ 
    count = 0
        for a in 1...i{ // 약수의 개수 체크하기
            if i % a == 0{
                count = count + 1
            }
        }

        if count % 2 == 0{ // 약수의 개수가 짝수이면 result++
            result = result + i
        }else { // 약수의 개수가 약수이면 result--
            result = result - i

        }
    }

    return result
}
