// 음양 더하기

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {

    var newNumbers: [Int] = [] // 부호와 숫자를 더한 값을 넣을 새로운 배열 변수 선언
    var result = 0 // 모든 숫자를 더한 값을 넣을 변수 선언

    for i in 0 ... absolutes.count-1{ // absolutes의 개수만큼 반복하는 반복문 선언

        if signs[i] == false{ // 만약 signs가 false 라면
            newNumbers.append(absolutes[i] * -1) // absolutes[i] 값에 -를 붙여 newNumbers에 넣어준다
        }else{  // 만약 signs가 true 라면
            newNumbers.append(absolutes[i]) // absolutes[i] 값을 그냥 newNumbers에 넣어준다
        }

        result = result+newNumbers[i] // 모든 수를 result에 더한다
    }

    return result
}