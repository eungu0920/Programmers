import Foundation

/*
 정수 배열 array가 매개변수로 주어질 때, 가장 큰 수와 그 수의 인덱스를 담은 배열을 return 하도록 solution 함수를 완성해보세요.
 */

public func 가장_큰_수_찾기(_ array: [Int]) -> [Int] {
    var max: Int = 0
    var index: Int = 0
    var count: Int = 0
    var result = [Int]()
    
    for i in array {
        if i > max {
            max = i
            index = count
        }
        count += 1
    }
    
    result.append(max)
    result.append(index)
    
    return result
}

//다른풀이
//func solution(_ array: [Int]) -> [Int] {
//    [array.max() ?? 0, array.firstIndex(of: array.max() ?? 0) ?? 0]
//}
