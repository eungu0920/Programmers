import Foundation

/*
 길이가 n이고, "수박수박수박수...."와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요. 예를들어 n이 4이면 "수박수박"을 리턴하고 3이라면 "수박수"를 리턴하면 됩니다.
 
 제한사항
 - n은 길이 10,000이하인 자연수입니다.
 */

public func 수박수박수박수박수박수(_ n: Int) -> String {
    let num: Bool = n % 2 == 0
    var result: String = ""
    
    if n != 0 && n != 1 {
        if num {
            for _ in 1...n/2 {
                result += "수박"
            }
        } else {
            for _ in 1...n/2 {
                result += "수박"
            }
            result += "수"
        }
    } else {
        if n == 1 {
            result += "수"
        }
    }
    
    return result
}

//다른풀이
//func solution(_ n: Int) -> String {
//    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
//}
