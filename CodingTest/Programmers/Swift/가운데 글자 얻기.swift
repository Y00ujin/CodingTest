// 가운데 글자 얻기

func solution(_ s:String) -> String { // s = hello
    
    // 가운데 글자를 담을 test 변수 선언
    var text = ""
    
    // s 글자의 갯수가 짝수일 때
    if s.count % 2 == 0 {
        // 처음 인덱스부터 글자의 개수 / 2 - 1 의 인덱스를 startIndex 변수에 담음
        // 짝수면 가운데 글자가 1개가 아니라 2개 인데 그 2개중 왼쪽 숫자의 인덱스를 담음
        let startIndex = s.index(s.startIndex, offsetBy: s.count / 2 - 1)

        // 처음 인덱스부터 글자의 개수 / 2 의 인덱스를 startIndex 변수에 담음
        // 짝수면 가운데 글자가 1개가 아니라 2개 인데 그 2개중 오른쪽 숫자의 인덱스를 담음
        let endIndex = s.index(s.startIndex, offsetBy: s.count / 2)

        // l + l = ll
        let range = startIndex...endIndex
        
        text = String(s[range])
    } else { // s 글자의 개수가 홀수일 때
        // 처음 인덱스부터 글자의 개수 / 2 번째 index를 담음 == 가운데 글자를
        let startIndex = s.index(s.startIndex, offsetBy: s.count / 2 )
    
        text = String(s[startIndex])
    }
    return text
}