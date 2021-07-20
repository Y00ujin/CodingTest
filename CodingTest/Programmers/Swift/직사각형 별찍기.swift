import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! } // n에 a와 b의 값을 입력받는다
let (a, b) = (n[0], n[1]) // 입력받은 값을 a와 b에 넣어준다

for _ in 1...b{ // b만큼 반복
    for _ in 1...a{ // a만큼 반복
        print("*", terminator: "") // 줄바꿈 안하는 법
    }
    print("") // 줄바꿈
}