import Foundation

/*
 문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 "(최소값) (최대값)"형태의 문자열을 반환하는 함수, solution을 완성하세요.
 예를들어 s가 "1 2 3 4"라면 "1 4"를 리턴하고, "-1 -2 -3 -4"라면 "-4 -1"을 리턴하면 됩니다.
 
 제한사항
 - s에는 둘 이상의 정수가 공백으로 구분되어 있습니다.
 */

public func 최댓값과_최솟값(_ s: String) -> String {
    let result = s.components(separatedBy: " ").map { Int($0)! }.sorted(by: <)
    return "\(result.first!) \(result.last!)"
}

//다른풀이
//사실 내가 깔끔 그 잡채로 푼 듯 함ㅎ... 그래서 다른풀이는 없음! 밑에는 처음에 풀었던 풀이인데 어떻게 더 깔끔하게 풀 수 있을까 고민하다가 위 코드가 나오게 되었다!
//func solution(_ s: String) -> String {
//    var arr = s.components(separatedBy: " ")
//    var max: Int = Int(arr[0])!
//    var min: Int = max
//
//    for i in arr {
//        if Int(i)! > max {
//            max = Int(i)!
//        }
//
//        if Int(i)! < min {
//            min = Int(i)!
//        }
//    }
//
//    return "\(min) \(max)"
//}
