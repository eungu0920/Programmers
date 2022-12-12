import Foundation

/*
 함수 solution은 정수 n을 매개변수로 입력받습니다. n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.
 
 제한사항
 - n은 1이상 8000000000 이하인 자연수입니다.
 */

public func 정수_내림차순으로_배치하기(_ n: Int64) -> Int64 { Int64(String(n).map { String($0) }.sorted(by: >).joined())! }

//다른풀이
//func solution(_ n:Int64) -> Int64 {
//    return Int64(String(Array(String(n)).sorted { $0 > $1 }))!
//}
//func solution(_ n:Int64) -> Int64 {
//    return Int64(String(String(n).sorted{ $0 > $1 }))!
//}
//func solution(_ n:Int64) -> Int64 {
//    return Int64(String(n).sorted(by: >).reduce("") {String($0) + String($1)})!
//}
