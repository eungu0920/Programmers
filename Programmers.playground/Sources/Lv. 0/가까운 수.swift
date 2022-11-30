import Foundation

/*
 정수 배열 array와 정수 n이 매개변수로 주어질 때, array에 들어있는 정수 중 n과 가장 가까운 수를 return 하도록 solution 함수를 완성해주세요.
 */

public func 가까운_수(_ array: [Int], _ n: Int) -> Int {
    var min: Int = 100
    var result: Int = 0
    
    for i in array.sorted() {
        if min > abs(i - n) {
            min = abs(i - n)
            result = i
        } else if min == abs(i - n) {
            continue
        }
    }
    
    return result
}
