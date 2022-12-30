import Foundation

/*
 자연수 n이 주어졌을 때, n의 다음 큰 숫자는 다음과 같이 정의 합니다.

 - 조건 1. n의 다음 큰 숫자는 n보다 큰 자연수 입니다.
 - 조건 2. n의 다음 큰 숫자와 n은 2진수로 변환했을 때 1의 갯수가 같습니다.
 - 조건 3. n의 다음 큰 숫자는 조건 1, 2를 만족하는 수 중 가장 작은 수 입니다.
 
 예를 들어서 78(1001110)의 다음 큰 숫자는 83(1010011)입니다.
 자연수 n이 매개변수로 주어질 때, n의 다음 큰 숫자를 return 하는 solution 함수를 완성해주세요.
 
 제한사항
 - n은 1,000,000 이하의 자연수 입니다.
 */

public func 다음_큰_숫자(_ n: Int) -> Int {
    var mutableN = n
    var count: Int = 0
    
    let binary = String(n, radix: 2)
    
    for i in binary {
        if i == "1" {
            count += 1
        }
    }
    
    while true {
        mutableN += 1
        if String(mutableN, radix: 2).filter({ $0 == "1" }).count == count {
            break
        }
    }
    
    return mutableN
}

//다른풀이
//오 nonzeroBitCount...
//func solution(_ n:Int) -> Int {
//    var answer : Int = n + 1
//
//    while true {
//        if n.nonzeroBitCount == answer.nonzeroBitCount {
//            break;
//        }
//        answer += 1
//    }
//
//    return answer
//}
