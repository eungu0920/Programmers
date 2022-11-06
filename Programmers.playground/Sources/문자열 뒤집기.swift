import Foundation

/*
 문자열 my_string이 매개변수로 주어집니다. my_string을 거꾸로 뒤집은 문자열을 return하도록 solution 함수를 완성해주세요.
 */

public func 문자열_뒤집기(_ my_string: String) -> String {
    var result: String = ""
    
    for i in my_string.reversed() {
        result.append(i)
    }

    return result
}

//다른 풀이
//public func solution(_ myString: String) -> String { String(myString.reversed()) }
