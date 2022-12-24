import Foundation

/*
 JadenCase란 모든 단어의 첫 문자가 대문자이고, 그 외의 알파벳은 소문자인 문자열입니다. 단, 첫 문자가 알파벳이 아닐 때에는 이어지는 알파벳은 소문자로 쓰면 됩니다. (첫 번째 입출력 예 참고)
 문자열 s가 주어졌을 때, s를 JadenCase로 바꾼 문자열을 리턴하는 함수, solution을 완성해주세요.
 
 제한사항
 - s는 길이 1 이상 200 이하인 문자열입니다.
 - s는 알파벳과 숫자, 공백문자(" ")로 이루어져 있습니다.
 - 숫자는 단어의 첫 문자로만 나옵니다.
 - 숫자로만 이루어진 단어는 없습니다.
 - 공백문자가 연속해서 나올 수 있습니다.
 */

public func JadenCase_문자열_만들기(_ s: String) -> String {
    var result: String = ""
    
    for str in s.components(separatedBy: " ") {
        if str.isEmpty {
            result += " "
            continue
        }
        
        var temp = str
        let first = temp.removeFirst().uppercased()
        let last = temp.lowercased()
        
        result += first + last + " "
    }

    result.removeLast()
    
    return result
}

//다른풀이
//func solution(_ s:String) -> String {
//    var ans = ""
//    var index = 0
//
//    for char in s {
//        if char != " " {
//            if index == 0 {
//                ans += String(char).uppercased()
//            } else {
//                ans += String(char).lowercased()
//            }
//            index += 1
//        } else {
//            ans += " "
//            index = 0
//        }
//    }
//    return ans
//}
