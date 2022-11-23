import Foundation

/*
 문자열 my_string이 매개변수로 주어집니다. my_string은 소문자, 대문자, 자연수로만 구성되어있습니다. my_string안의 자연수들의 합을 return하도록 solution 함수를 완성해주세요.
 
 제한사항
 - 1 ≤ my_string의 길이 ≤ 1,000
 - 1 ≤ my_string 안의 자연수 ≤ 1000
 - 연속된 수는 하나의 숫자로 간주합니다.
 - 000123과 같이 0이 선행하는 경우는 없습니다.
 - 문자열에 자연수가 없는 경우 0을 return 해주세요.
 */

func 숨어있는_숫자의_덧셈_2(_ my_string:String) -> Int {
    var result: Int = 0
    var temp: String = "0"

    for i in my_string {
        if i.isNumber {
            temp.append(i)
        } else {
            result += Int(temp)!
            temp = "0"
        }
    }

    result += Int(temp)!

    return result
}

//다른풀이
//func solution(_ my_string:String) -> Int {
//    return my_string.replacingOccurrences(of: "[a-zA-Z]", with: " ", options: .regularExpression).split(separator: " ", omittingEmptySubsequences: true).map { Int($0) ?? 0 }.reduce(0, +)
//}
