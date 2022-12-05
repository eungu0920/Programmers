import Foundation

/*
 정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
 
 제한사항
 - n은 0 이상 3000이하인 정수입니다.
 */

public func 약수의_합(_ n: Int) -> Int {
    var div: Int = 1
    var result: Int = 0
    
    while n >= div {
        if n % div == 0 {
            result += div
        }
        div += 1
    }
    
    return result
}

//다른풀이
//func solution(_ n: Int) -> Int { n != 0 ? Array(1...n).filter { n % $0 == 0 }.reduce(0, +) : 0 }
