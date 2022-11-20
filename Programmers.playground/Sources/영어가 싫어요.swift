import Foundation

/*
 영어가 싫은 머쓱이는 영어로 표기되어있는 숫자를 수로 바꾸려고 합니다. 문자열 numbers가 매개변수로 주어질 때, numbers를 정수로 바꿔 return 하도록 solution 함수를 완성해 주세요.
 */

public func 영어가_싫어요(_ numbers: String) -> Int64 {
    let dictionary: [String:Int] = ["zero":0, "one":1, "two":2, "three":3, "four":4, "five":5, "six":6, "seven":7, "eight":8, "nine":9]
    var num: String = ""
    var result: String = ""
    
    for i in numbers {
        num.append(i)
        if dictionary.keys.contains(num) {
            result.append(String(dictionary[num]!))
            num = ""
        }
    }
    
    return Int64(result)!
}

//다른풀이
//func solution(_ numbers: String) -> Int64 {
//    let result = numbers
//        .replacingOccurrences(of: "zero", with: "0")
//        .replacingOccurrences(of: "one", with: "1")
//        .replacingOccurrences(of: "two", with: "2")
//        .replacingOccurrences(of: "three", with: "3")
//        .replacingOccurrences(of: "four", with: "4")
//        .replacingOccurrences(of: "five", with: "5")
//        .replacingOccurrences(of: "six", with: "6")
//        .replacingOccurrences(of: "seven", with: "7")
//        .replacingOccurrences(of: "eight", with: "8")
//        .replacingOccurrences(of: "nine", with: "9")
//
//    return Int64(result)!
//}
