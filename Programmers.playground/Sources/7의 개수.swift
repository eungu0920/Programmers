import Foundation

/*
 머쓱이는 행운의 숫자 7을 가장 좋아합니다. 정수 배열 array가 매개변수로 주어질 때, 7이 총 몇 개 있는지 return 하도록 solution 함수를 완성해보세요.
 */

public func 칠의_개수(_ array: [Int]) -> Int {
    array.map { String($0).filter { String($0) == "7" }.count }.reduce(0, +)
}

//다른풀이
//func solution(_ array: [Int]) -> Int {
//    array.map { String($0) }.joined().filter { $0 == "7" }.count
//}
