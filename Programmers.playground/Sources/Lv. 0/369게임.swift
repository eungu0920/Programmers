import Foundation

/*
 머쓱이는 친구들과 369게임을 하고 있습니다. 369게임은 1부터 숫자를 하나씩 대며 3, 6, 9가 들어가는 숫자는 숫자 대신 3, 6, 9의 개수만큼 박수를 치는 게임입니다. 머쓱이가 말해야하는 숫자 order가 매개변수로 주어질 때, 머쓱이가 쳐야할 박수 횟수를 return 하도록 solution 함수를 완성해보세요.
 */

public func 삼육구_게임(_ order: Int) -> Int {
    String(order).filter { Int(String($0))! % 3 == 0 && Int(String($0))! != 0 }.count
}

//처음 푼 풀이
//func solution(_ order: Int) -> Int {
//    var result = String(order)
//    var count: Int = 0
//
//    for i in result where Int(String(i))! % 3 == 0 {
//        count += 1
//    }
//
//    return count
//}

//다른풀이
//func solution(_ order: Int) -> Int {
//    String(order).filter { "369".contains($0) }.count
//}
