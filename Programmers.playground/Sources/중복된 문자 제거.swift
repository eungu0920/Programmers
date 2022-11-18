import Foundation

/*
 문자열 my_string이 매개변수로 주어집니다. my_string에서 중복된 문자를 제거하고 하나의 문자만 남긴 문자열을 return하도록 solution 함수를 완성해주세요.
 */

public func 중복된_문자_제거(_ my_string: String) -> String {
    var result: String = ""
    
    for i in my_string {
        if !result.contains(String(i)) {
            result.append(String(i))
        }
    }
    
    return result
}

//다른풀이 - Dictionary 사용
//func solution(_ my_string: String) -> String {
//    var dictionary = [String:Int]()
//    var result: String = ""
//
//    for i in my_string {
//        if !dic.keys.contains(String(i)) {
//            dic[String(i)] = 0
//        }
//    }
//    return ""
//}
