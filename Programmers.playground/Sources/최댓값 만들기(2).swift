import Foundation

/*
 정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소 중 두 개를 곱해 만들 수 있는 최댓값을 return하도록 solution 함수를 완성해주세요.
 */

public func 최댓값_만들기_2(_ numbers: [Int]) -> Int {
    var result = numbers.sorted()
    return result[result.endIndex - 1] * result[result.endIndex - 2] > result[result.startIndex] * result[result.startIndex + 1] ? result[result.endIndex - 1] * result[result.endIndex - 2] : result[result.startIndex] * result[result.startIndex + 1]
}

//다른풀이 -> 처음 푼거 너무 지저분하게 푼듯....
//func solution(_ numbers: [Int]) -> Int {
//    let result = numbers.sorted()
//    return max(result[0] * result[1], result[result.count - 1] * result[result.count - 2])
//}
