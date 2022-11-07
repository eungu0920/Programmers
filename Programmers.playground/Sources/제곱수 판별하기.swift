import Foundation

/*
 어떤 자연수를 제곱했을 때 나오는 정수를 제곱수라고 합니다. 정수 n이 매개변수로 주어질 때, n이 제곱수라면 1을 아니라면 2를 return하도록 solution 함수를 완성해주세요.
 */

public func 제곱수_판별하기(_ n: Int) -> Int {
    let temp: Double = sqrt(Double(n))
    
    if temp - trunc(temp) == 0 {
        return 1
    } else {
        return 2
    }
}

//다른풀이
//func solution(_ n: Int) -> Int {
//    let root = Int(sqrt(Double(n)))
//    return root * root == n ? 1 : 2
//}
