import Foundation

/*
 문자열 my_string이 매개변수로 주어집니다. my_string안의 모든 자연수들의 합을 return하도록 solution 함수를 완성해주세요.
 */

public func 숨어있는_숫자의_덧셈_1(_ my_string: String) -> Int {
    var result: Int = 0
    var temp: String = ""
    
    for i in my_string {
        if i.isNumber {
            temp.append(i)
            result += Int(temp)!
            temp.popLast()
        }
    }
    
    return result
}

//다른풀이
//func solution(_ my_string: String) -> Int {
//    return my_string.compactMap{Int(String($0))}.reduce(0, +)
//}

//func solution(_ my_string: String) -> Int {
//    return my_string.filter{$0.isNumber}.map{Int(String($0))!}.reduce(0, +)
//}


