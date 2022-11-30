import Foundation

/*
 1부터 13까지의 수에서, 1은 1, 10, 11, 12, 13 이렇게 총 6번 등장합니다. 정수 i, j, k가 매개변수로 주어질 때, i부터 j까지 k가 몇 번 등장하는지 return 하도록 solution 함수를 완성해주세요.
 */

public func k의_개수(_ i: Int, _ j: Int, _ k: Int) -> Int {
    var count: Int = 0
    
    for search in i...j {
        for strNum in String(search) {
            if Int(String(strNum)) == k {
                count += 1
            }
        }
    }
    
    return count
}

//다른풀이
//func solution(_ i: Int, _ j: Int, _ k: Int) -> Int {
//    (i...j).map { String($0).filter { String($0) == String(k) }.count }.reduce(0, +)
//}
