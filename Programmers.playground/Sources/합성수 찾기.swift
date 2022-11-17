import Foundation

/*
 약수의 개수가 세 개 이상인 수를 합성수라고 합니다. 자연수 n이 매개변수로 주어질 때 n이하의 합성수의 개수를 return하도록 solution 함수를 완성해주세요.
 */

public func 합성수_찾기(_ n: Int) -> Int {
    var numbers: [Int] = [Int](repeating: 0, count: n+1)
    
    for i in 1...n {
        for j in 1...i {
            if i % j == 0 {
                numbers[i] += 1
            }
        }
    }
    
    for i in 1...n {
        if numbers[i] < 3 {
            numbers[i] = 0
        } else {
            numbers[i] = 1
        }
        numbers[i] += numbers[i-1]
    }
    
    return numbers[n]
}

//다른풀이
//func solution(_ n: Int) -> Int {
//    (1...n).filter { i in (1...i).filter { i % $0 == 0 }.count > 2 }.count
//}
