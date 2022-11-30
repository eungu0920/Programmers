import Foundation

/*
 문자열 "hello"에서 각 문자를 오른쪽으로 한 칸씩 밀고 마지막 문자는 맨 앞으로 이동시키면 "ohell"이 됩니다. 이것을 문자열을 민다고 정의한다면 문자열 A와 B가 매개변수로 주어질 때, A를 밀어서 B가 될 수 있다면 몇 번 밀어야 하는지 횟수를 return하고 밀어서 B가 될 수 없으면 -1을 return 하도록 solution 함수를 완성해보세요.
 
 제한사항
 - 0 < A의 길이 = B의 길이 < 100
 - A, B는 알파벳 소문자로 이루어져 있습니다.
 */

public func 문자열_밀기(_ A: String, _ B: String) -> Int {
    var mutableA = A
    var count: Int = 0
    
    for _ in 1...mutableA.count {
        if mutableA == B {
            return count
        } else {
            mutableA.insert(mutableA.removeLast(), at: mutableA.startIndex)
            count += 1
        }
    }
    
    return -1
}

//다른풀이
//func solution(_ A: String, _ B: String) -> Int {
//    let arr = (A+A).components(separatedBy: B)
//    return arr.count == 1 ? -1 : arr[1].count
//}
