import Foundation

/*
 문자열 my_string과 문자 letter이 매개변수로 주어집니다. my_string에서 letter를 제거한 문자열을 return하도록 solution 함수를 완성해주세요.
 */

public func 특정_문자_제거하기(_ my_string: String, _ letter: String) -> String {
    var result: String = ""
    
    for i in my_string {
        if i == Character(letter) {
            continue
        } else {
            result.append(i)
        }
    }
    return result
}

////다른 풀이
//func solution(_ my_string: String, _ letter: String) -> String {
//    return my_string.filter{String($0) != letter}
//}
//
//func solution(_ my_string: String, _ letter: String) -> String {
//    return my_string.replaceOccurrences(of: letter, with: "")
//}
