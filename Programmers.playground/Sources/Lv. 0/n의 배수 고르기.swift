import Foundation

/*
 정수 n과 정수 배열 numlist가 매개변수로 주어질 때, numlist에서 n의 배수가 아닌 수들을 제거한 배열을 return하도록 solution 함수를 완성해주세요.
 */

public func n의_배수_고르기(_ n: Int, _ numlist: [Int]) -> [Int] {
    numlist.filter{ $0 % n == 0 }
}

//다른풀이
//func solution(_ n: Int, _ numlist: [Int]) -> [Int] {
//    var result: [Int] = []
//
//    for i in numlist {
//        if i % n == 0 {
//            result.append(i)
//        }
//    }
//
//    return result
//}
//
//func solution(_ n: Int, _ numlist: [Int]) -> [Int] {
//    var result: [Int] = []
//
//    for i in numlist where i % n == 0 {
//        result.append(i)
//    }
//    return result
//}
