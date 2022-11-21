import Foundation

/*
 my_string은 "3 + 5"처럼 문자열로 된 수식입니다. 문자열 my_string이 매개변수로 주어질 때, 수식을 계산한 값을 return 하는 solution 함수를 완성해주세요.
 */

public func 문자열_계산하기(_ my_string: String) -> Int {
    var array = my_string.components(separatedBy: " ")
    var result: Int = Int(array.removeFirst())!
    var temp: String = ""
    
    for i in array {
        if i == "+" || i == "-" {
            temp = String(i)
        } else {
            if temp == "+" {
                result += Int(i)!
            } else {
                result -= Int(i)!
            }
        }
    }
    
    return result
}
