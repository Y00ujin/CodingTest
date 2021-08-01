### 최대공약수와 최소공배수

- ##### 프로그래머스 ```LEVEL 1``` 풀어보기 in 20210801 with YouJin 👩🏻‍💻

#### 내 코드 풀이 👩🏻‍💻

##### 1. n의 약수, m의 약수, 최대공약수와 최대공배수를 담아줄 변수를 선언한다
```swift
    var nArray = [Int]()
    var mArray = [Int]()
    var result = [Int]()
```
***
##### 2. n, m의 약수를 구해 각 배열에 넣어준다.
- ###### n%1, n%2, n%3 == 3%1, 3%2, 3%3 ( 1,3 )
```swift
    for i in 1...n{
        if n%i == 0 {
            nArray.append(i)
        }
    }
    
    for i in 1...m{
        if m%i == 0 {
            mArray.append(i)
        }
    }
```
***
##### 3. 각 배열을 뒤집어준다
- ###### 뒤집어주는 이유는 "최대"공약수 이므로 [1,3]을 [3,1]로 바꿔 3부터 검사하면서 코드 실행 시간을 단축시킬 수 있기 때문이다!
```swift
    nArray.reverse()
    mArray.reverse()
```
***
##### 4. 최대공약수를 구하고 결과 변수에 넣어준다.
```swift
    for i in 0...nArray.count-1{
        if result.count != 0 {break}
        for j in 0...mArray.count-1{
            if nArray[i] == mArray[j]{
                result.append(nArray[i])
            }
        }
    }
```
- ###### 4-1. n의 약수의 개수만큼 for문 실행
```for i in 0...nArray.count-1{}```
- ###### 4-2. 최대공약수를 찾으면 for문 탈출!
```if result.count != 0 {break}```
- ###### 4-3. m의 약수의 개수만큼 for문 실행
```for i in 0...mArray.count-1{}```
- ###### 4-4. nArray의 요소와 mArray의 요소를 비교해 같으면 결과 변수에 삽입
```swift
    if nArray[i] == mArray[j]{
       result.append(nArray[i])
    }
```
***
##### 5. 최소공배수를 구하고 결과 변수에 넣어준다.
```swift
    for i in stride(from: n, through: 10000, by: n) {
        if result.count != 1 {break}
        for j in stride(from: m, through: 10000, by: m) {
            if i == j {
                result.append(i)
                print(result)
            }
        }
    }
```

- ###### 5-1. stride를 이용해 n부터 10000까지 n씩 증가하는 for문 생성
```for i in stride(from: n, through: 10000, by: n) {} // 3, 6, 9, 12 ... 9999```

- ###### 5-2. 결과 변수에 최소공배수가 들어있다면 for문 탈출!
``` if result.count != 1 {break}```

- ###### 5-3. stride를 이용해 m부터 10000까지 m씩 증가하는 for문 생성
```for j in stride(from: m, through: 10000, by: m) {}```

- ###### n의 공배수와 m의 공배수가 같다면 결과 변수에 삽입
```swift
    if i == j {
        result.append(i)
        print(result)
    }
```
***

##### 내 전체 코드!
```swift
func solution(_ n:Int, _ m:Int) -> [Int] {
    
    var nArray = [Int]()
    var mArray = [Int]()
    var result = [Int]()
    
    for i in 1...n{
        if n%i == 0 {
            nArray.append(i)
        }
    }
    
    for i in 1...m{
        if m%i == 0 {
            mArray.append(i)
        }
    }
    
    nArray.reverse()
    mArray.reverse()

    for i in 0...nArray.count-1{
        if result.count != 0 {break}
        for j in 0...mArray.count-1{
            if nArray[i] == mArray[j]{
                result.append(nArray[i])
            }
        }
    }

    for i in stride(from: n, through: 10000, by: n) {
        if result.count != 1 {break}
        for j in stride(from: m, through: 10000, by: m) {
            if i == j {
                result.append(i)
                print(result)
            }
        }
    }
    
    
    return result
}
```

##### 더 나은 코드!
```swift
func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}
```


### END!
