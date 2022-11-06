import Foundation

/*
 정수 n이 매개변수로 주어질 때, n 이하의 홀수가 오름차순으로 담긴 배열을 return하도록 solution 함수를 완성해주세요.
 */

public func 짝수는_싫어요(_ n: Int) -> [Int] {
    var result = [Int]()
    
    for i in 1...n {
        if i % 2 == 1 {
            result.append(i)
        }
    }
    
    return result
}

//다른 풀이
//func solution(_ n: Int) -> [Int] { (0...n).filter { $0 % 2 == 1} }
