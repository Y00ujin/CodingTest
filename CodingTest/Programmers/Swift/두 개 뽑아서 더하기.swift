func solution(_ numbers:[Int]) -> [Int] {
    var numbers = [2,1,3,4,1]
    var result: [Int] = [] // 결과를 담을 배열 선언

    for i in 0...numbers.count-1{ // numbers의 원소의 개수만큼 반복하는 배열 선언
        for j in 0...numbers.count-1{ // numbers의 원소의 개수만큼 반복하는 배열 선언
            if i != j{ // 자신과 더하면 안되기 때문에 i와 j가 다른지 확인한다
                if result.firstIndex(of: numbers[i]+numbers[j]) == nil { // 그리고 중복값을 없애기 위해서 result배열에 더한값이 없는지 확인한다
                    result.append(numbers[i]+numbers[j]) // 결과 배열에 넣기
                }
            }
        }
    }

    var upresult = result.sorted(by: <) // 오름차순으로 정렬
    return upresult
}