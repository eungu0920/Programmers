import Foundation

/*
 정수 배열 numbers가 매개변수로 주어집니다. numbers의 각 원소에 두배한 원소를 가진 배열을 return하도록 solution 함수를 완성해주세요.
 */

public func 배열_두배_만들기(_ numbers: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in numbers {
        result.append(i * 2)
    }
    
    return result
}

//다른 풀이
//func solution(_ numbers: [Int]) -> [Int] { numbers.map { $0 * 2 } }
