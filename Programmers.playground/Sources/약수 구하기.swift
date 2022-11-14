import Foundation

/*
 정수 n이 매개변수로 주어질 때, n의 약수를 오름차순으로 담은 배열을 return하도록 solution 함수를 완성해주세요.
 */

public func 약수_구하기(_ n: Int) -> [Int] {
    var result: [Int] = []
    
    for i in 1...n where n % i == 0 {
        result.append(i)
    }
    
    return result
}

//다른풀이
//func solution(_ n: Int) -> [Int] { (1...n).filter { n % $0 == 0 } }
// -> 위 코드보다 시간이 오래걸림
