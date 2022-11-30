import Foundation

/*
 숫자들이 공백으로 구분된 문자열이 주어집니다. 문자열에 있는 숫자를 차례대로 더하려고 합니다. 이 때 “Z”가 나오면 바로 전에 더했던 숫자를 뺀다는 뜻입니다. 숫자와 “Z”로 이루어진 문자열 s가 주어질 때, 머쓱이가 구한 값을 return 하도록 solution 함수를 완성해보세요.
 - 제한사항
 1. 0 < s의 길이 < 1,000
 2. -1,000 < s의 원소 중 숫자 < 1,000
 3. s는 숫자, "Z", 공백으로 이루어져 있습니다.
 4. s에 있는 숫자와 "Z"는 서로 공백으로 구분됩니다.
 5. 연속된 공백은 주어지지 않습니다.
 6. 0을 제외하고는 0으로 시작하는 숫자는 없습니다.
 7. s의 시작과 끝에는 공백이 없습니다.
 8. 모든 숫자를 지우는 경우는 주어지지 않습니다.
 9. 지울 숫자가 없는 상태에서 "Z"는 무시합니다.
 */

public func 컨트롤_제트(_ s: String) -> Int {
    var array = s.components(separatedBy: " ")
    var temp: [String] = []
    var result: Int = 0
    
    for i in array {
        if i == "Z" {
            if temp.isEmpty {
                continue
            } else {
                result -= Int(temp.removeLast())!
            }
        } else {
            result += Int(i)!
            temp.append(i)
        }
    }
    
    return result
}

//다른풀이
//func solution(_ s: String) -> Int {
//    var stack = [Int]()
//    var result: Int = 0
//
//    for i in s.components(separatedBy: " ") {
//        if i == "Z" {
//            stack.popLast()
//        } else {
//            stack.append(Int(i)!)
//        }
//    }
//    return stack.reduce(0, +)
//}
