import Foundation

/*
 영어에선 a, e, i, o, u 다섯 가지 알파벳을 모음으로 분류합니다. 문자열 my_string이 매개변수로 주어질 때 모음을 제거한 문자열을 return하도록 solution 함수를 완성해주세요.
 */

public func 모음_제거(_ my_string: String) -> String {
    var result: String = ""
    
    for i in my_string {
        if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" {
            continue
        }
        result.append(i)
    }
    
    return result
}

//다른풀이
//func solution(_ my_string: String) -> String {
//    return my_string.components(separatedBy: ["a", "e", "i", "o", "u"]).joined()
//}
//
//func solution(_ my_string: String) -> String {
//    return my_string.replacingOccurrences(of: "[aeiou]", with: "", options: .regularExpression)
//}
