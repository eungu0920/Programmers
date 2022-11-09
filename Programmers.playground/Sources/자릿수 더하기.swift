import Foundation

/*
 정수 n이 매개변수로 주어질 때 n의 각 자리 숫자의 합을 return하도록 solution 함수를 완성해주세요
 */

public func 자릿수_더하기(_ n: Int) -> Int {
    var result: Int = 0
    var m = n
    
    while(m > 0) {
        result += m % 10
        m /= 10
    }
    
    return result
}
