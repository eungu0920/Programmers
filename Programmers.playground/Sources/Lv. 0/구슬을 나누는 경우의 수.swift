import Foundation

/*
 머쓱이는 구슬을 친구들에게 나누어주려고 합니다. 구슬은 모두 다르게 생겼습니다. 머쓱이가 갖고 있는 구슬의 개수 balls와 친구들에게 나누어 줄 구슬 개수 share이 매개변수로 주어질 때, balls개의 구슬 중 share개의 구슬을 고르는 가능한 모든 경우의 수를 return 하는 solution 함수를 완성해주세요.
 */

private func factorial(_ n: Int, _ combi: [Double]) -> [Double] {
    var result = combi
    
    for i in 1...n {
        result[i] = result[i-1] * Double(i)
    }
    
    return result
}

public func 구슬을_나누는_경우의_수(_ balls: Int, _ share: Int) -> Int {
    var combination = [Double](repeating: 1.0, count: balls + 1)
    
    combination = factorial(balls, combination)
    
    var result = (combination[balls] / (combination[balls - share] * combination[share]))
    
    print(result.round())
    
    return Int(result)
}

//매우 큰 값이 Int로 들어갈 때는 Int64를 써서 사용가능 -> 왜 Double 밖에 생각이 안났었지...
//다른풀이
//func solution(_ balls:Int, _ share:Int) -> Int64 {
//    var min = balls - share < share ? balls - share : share
//
//    var answer: Int64 = 1
//    if min == 0 { return 1 }
//    for i in 1...min {
//        answer *= Int64(balls-min+i)
//        answer /= Int64(i)
//    }
//    return answer
//}
