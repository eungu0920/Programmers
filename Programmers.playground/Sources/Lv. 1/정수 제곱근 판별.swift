import Foundation

/*
 임의의 양의 정수 n에 대해, n이 어떤 양의 정수 x의 제곱인지 아닌지 판단하려 합니다.
 n이 양의 정수 x의 제곱이라면 x+1의 제곱을 리턴하고, n이 양의 정수 x의 제곱이 아니라면 -1을 리턴하는 함수를 완성하세요.
 
 제한사항
 - n은 1이상, 50000000000000 이하인 양의 정수입니다.
 */

public func 정수_제곱근_판별(_ n: Int64) -> Int64 {
    if sqrt(Double(n)) - Double(Int(sqrt(Double(n)))) == 0 {
        return Int64(pow(sqrt(Double(n)) + 1, 2))
    } else {
        return -1
    }
}

//다른풀이
//func solution(_ n: Int64) -> Int64 {
//    let t = Int64(sqrt(Double(n)))
//    return t * t == n ? (t + 1) * (t + 1) : -1
//}
