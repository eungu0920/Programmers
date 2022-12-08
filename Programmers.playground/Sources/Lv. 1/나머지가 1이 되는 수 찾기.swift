import Foundation

/*
 자연수 n이 매개변수로 주어집니다. n을 x로 나눈 나머지가 1이 되도록 하는 가장 작은 자연수 x를 return 하도록 solution 함수를 완성해주세요. 답이 항상 존재함은 증명될 수 있습니다.
 
 제한사항
 - 3 ≤ n ≤ 1,000,000
 */

public func 나머지가_1이_되는_수_찾기(_ n: Int) -> Int {
    var count: Int = 1
    
    while n % count != 1 {
        count += 1
    }
    
    return count
}
