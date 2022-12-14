import Foundation

/*
 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다. 예를 들어 18의 자릿수 합은 1+8=9이고, 18은 9로 나누어 떨어지므로 18은 하샤드 수입니다. 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사하는 함수, solution을 완성해주세요.
 
 제한사항
 - x는 1 이상, 10000 이하인 정수입니다.
 */

public func 하샤드_수(_ x: Int) -> Bool {
    var result: Int = 0
    var mutableX: Int = x
    
    while mutableX > 0 {
        result += mutableX % 10
        mutableX /= 10
    }
    
    return x % result == 0
}

//다른풀이
//func solution(_ x: Int) -> Bool { x % String(x).map { Int(String($0))! }.reduce(0, +) == 0 }
