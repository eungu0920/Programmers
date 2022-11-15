import Foundation

/*
 정수 num과 k가 매개변수로 주어질 때, num을 이루는 숫자 중에 k가 있으면 num의 그 숫자가 있는 자리 수를 return하고 없으면 -1을 return 하도록 solution 함수를 완성해보세요.
 */

public func 숫자_찾기(_ num: Int, _ k: Int) -> Int {
    let result: String = String(num)
    var count: Int = 1
    
    for i in result {
        if String(i) == String(k) {
            return count
        } else {
            count += 1
        }
    }
    return -1
}

//다른풀이
//func solution(_ num: Int, _ k: Int) -> Int { Array("-\(num)").firstIndex(of: Character(String(k))) ?? -1 }
//
//func solution(_ num:Int, _ k:Int) -> Int {
//    for (index, c) in String(num).enumerated() {
//        if String(c) == String(k) {
//            return index+1
//        }
//    }
//    return -1
//}
