import Foundation

/*
 i 팩토리얼 (i!)은 1부터 i까지 정수의 곱을 의미합니다. 예를들어 5! = 5 * 4 * 3 * 2 * 1 = 120 입니다. 정수 n이 주어질 때 다음 조건을 만족하는 가장 큰 정수 i를 return 하도록 solution 함수를 완성해주세요.
 i! ≤ n
 */

public func 팩토리얼(_ n: Int) -> Int {
    var result = n
    var count: Int = 1
    
    for i in 1...10 {
        result /= i

        if result == 0 {
            break
        }

        count = i
    }
    
    return count
}

//다른풀이
//func solution(_ n: Int) -> Int {
//    var result = n
//    var count: Int = 2
//    
//    while result > 0 {
//        result /= count
//        count += 1
//    }
//    
//    return count - 2
//}
