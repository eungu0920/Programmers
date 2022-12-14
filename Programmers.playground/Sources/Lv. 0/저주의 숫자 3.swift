import Foundation

/*
 3x 마을 사람들은 3을 저주의 숫자라고 생각하기 때문에 3의 배수와 숫자 3을 사용하지 않습니다. 3x 마을 사람들의 숫자는 다음과 같습니다.

 10진법    3x 마을에서 쓰는 숫자    10진법    3x 마을에서 쓰는 숫자
 1          1                   6       8
 2          2                   7       10
 3          4                   8       11
 4          5                   9       14
 5          7                   10      16
 
 정수 n이 매개변수로 주어질 때, n을 3x 마을에서 사용하는 숫자로 바꿔 return하도록 solution 함수를 완성해주세요.
 
 제한사항
 - 1 ≤ n ≤ 100
 */

public func 저주의_숫자_3(_ n: Int) -> Int {
    var array: [Int] = [Int](Array(repeating: 0, count: 101))
    var count: Int = 1
    
    for index in 1...100 {
        array[index] = count
        count += 1
        while count % 3 == 0 || count/10 == 3 || count/10 == 13 || count - (count/10) * 10 == 3  {
            count += 1
        }
    }
    
    return array[n]
}

//다른풀이
//func solution(_ n: Int) -> Int {
//    var result = 0
//
//    for _ in 1...n {
//        result += 1
//        while result % 3 == 0 || String(result).contains("3") {
//            result += 1
//        }
//    }
//
//    return result
//}
