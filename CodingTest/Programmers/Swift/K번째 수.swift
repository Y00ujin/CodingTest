// K번째 수

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = [] // 결과 값을 반환하는 배열 선언
    // 조건에서 100 개의 원소까지 넣을 수 있다고 했는데 빈 100개의 원소를 가진 배열을 선언하는 법읆 모르겠어서 일단 이렇게 했다 ..
    var newArray: [[Int]] = [[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] // 자른 배열을 넣을 배열 변수 선언
    var upArray: [Int] = [] // 정렬한 배열을 넣을 배열 변수 선언

    for i in 0 ... commands.count-1{ // commands요소의 개수만큼 반복하는 for문 생성
        for j in commands[i][0]-1 ... commands[i][1]-1{ // 자를 구간의 개수만큼 반복하는 for문 생성
            newArray[i].append(array[j]); // 자른 구간을 newArray에 넣어준다
        }
        upArray = newArray[i].sorted(by: <) // 오름차순한 배열을 upArray에 넣어준다
        answer.append(upArray[commands[i][2]-1]) // 오름차순 배열에서 commands의 [i][2]-1 index를 반환해준다
    }

    return answer
}