import Foundation

/*
 정수가 담긴 배열 numbers와 문자열 direction가 매개변수로 주어집니다. 배열 numbers의 원소를 direction방향으로 한 칸씩 회전시킨 배열을 return하도록 solution 함수를 완성해주세요.
 */

public func 배열_회전시키기(_ numbers: [Int], _ direction: String) -> [Int] {
    var result = numbers
    
    if direction == "right" {
        let i = result.removeLast()
        result.insert(i, at: 0)
    } else {
        let i = result.removeFirst()
        result.append(i)
    }
    
    return result
}

//다른풀이
//func solution(_ numbers: [Int], _ direction: String) -> [Int] {
//    var result = numbers
//
//    direction == "right" ? result.insert(result.removeLast(), at: 0) : result.append(result.removeFirst())
//
//    return result
//}
