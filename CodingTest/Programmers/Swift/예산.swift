// 예산

func solution(_ d:[Int], _ budget:Int) -> Int {
    var result = 0 // 예산을 나눠줄 수 있는 총 부서의 개수를 담을 변수
    var sum = 0    // 부서가 원하는 금액을 차례로 더한 값을 담을 변수

    // 이 한 줄 때문에 틀렸는데
    // 만약 부서 금액이 [9, 2, 1, 1]이고 예산이 4라고 했을 때 정렬을 하지않고 for문을 돌릴 시 9를 먼저 sum에 저장하기 때문에 result 가 0이 나온다
    // 하지만 실제로 예산을 나눠줄 수 있는 부서는 2, 1, 1 총 3개의 부서이다 따라서 오름차순 정렬을 한 후 금액을 더해나가면 작은 수 부터 검사하기 때문에
    // 이러한 오류를 막을 수 있다
    var dArray = d.sorted() 

    for i in 0...dArray.count-1{ // 부서의 개수만큼 반복하는 for문
        sum = sum + dArray[i] // sum에 부서의 금액을 저장한다
        if sum <= budget{ // 그 누적된 금액이 예산보다 적거나 같다면 
            result = result + 1 // 예산을 나눠줄 수 있는 부서의 개수 +1
        }
    }
    
    return result
}