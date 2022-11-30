import Foundation

/*
 선분 3개가 평행하게 놓여 있습니다. 세 선분의 시작과 끝 좌표가 [[start, end], [start, end], [start, end]] 형태로 들어있는 2차원 배열 lines가 매개변수로 주어질 때, 두 개 이상의 선분이 겹치는 부분의 길이를 return 하도록 solution 함수를 완성해보세요.

 제한사항
 - lines의 길이 = 3
 - lines의 원소의 길이 = 2
 - 모든 선분은 길이가 1 이상입니다.
 - lines의 원소는 [a, b] 형태이며, a, b는 각각 선분의 양 끝점 입니다.
 - -100 ≤ a < b ≤ 100
 */

public func 겹치는_선분의_길이(_ lines:[[Int]]) -> Int {
    var line: [Int] = [Int](repeating: 0, count: 401)
    //선분을 0.5 단위로 측정하기 위해서 2배로 늘림 -> 이렇게 하면 겹치는 부분의 시작점과 끝점을 구분 할 수 있어짐
    
    for i in lines {
        for j in i[0]*2...i[1]*2 {
            line[j + 200] += 1
        }
    }
    
    var calculate: Int = 0
    var result: Int = 0
    
    while !line.isEmpty {
        let value = line.removeFirst()
        
        if value > 1 {
            //겹치는 부분 계산
            calculate += 1
        } else {
            //측정 단위가 0.5 이므로 계산한 결과를 2로 나누어줌
            result += calculate / 2
            calculate = 0
        }
    }
    
    if calculate != 0 {
        //마지막 점까지 선분이 겹쳐있을 경우
        result += calculate / 2
    }
    
    return result
}

//다른풀이
//func solution(_ lines:[[Int]]) -> Int {
//    var wholeLine = Array(repeating: 0, count: 200)
//    for line in lines {
//        let line = line.sorted()
//        for idx in stride(from: line.first!, to: line.last!, by: 1) {
//            wholeLine[idx + 100] += 1
//        }
//    }
//    return wholeLine.filter { $0 >= 2 }.count
//}
