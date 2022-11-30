import Foundation

/*
 머쓱이네 피자가게는 피자를 여섯 조각으로 잘라 줍니다. 피자를 나눠먹을 사람의 수 n이 매개변수로 주어질 때, n명이 주문한 피자를 남기지 않고 모두 같은 수의 피자 조각을 먹어야 한다면 최소 몇 판을 시켜야 하는지를 return 하도록 solution 함수를 완성해보세요.
 */

private func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

private func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

public func 피자_나눠_먹기_2(_ n: Int) -> Int {
    return lcm(n, 6) / 6
}

//다른 풀이
//func solution(_ n: Int) -> Int {
//    var result: Int = 1
//
//    while true {
//        if (6 * result) % n == 0 {
//            return result
//        }
//        result += 1
//    }
//}
