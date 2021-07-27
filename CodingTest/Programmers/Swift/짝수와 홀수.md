// 짝수와 홀수

func solution(_ num:Int) -> String {
    return num % 2 == 0 ? "Even" : "Odd" // num을 2로 나눈 나머지가 0이면 "Even"출력 아니면 "Odd" 출력
}