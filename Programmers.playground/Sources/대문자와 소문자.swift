import Foundation

/*
 문자열 my_string이 매개변수로 주어질 때, 대문자는 소문자로 소문자는 대문자로 변환한 문자열을 return하도록 solution 함수를 완성해주세요.
 */

private let lowerCase: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]


public func 대문자와_소문자(_ my_string: String) -> String {
    var result: String = ""
    
    for i in my_string {
        if lowerCase.contains(i) {
            result.append(i.uppercased())
        } else {
            result.append(i.lowercased())
        }
    }
    
    return result
}

//다른풀이
//func solution(_ my_string: String) -> String {
//    my_string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }.joined()
//}
