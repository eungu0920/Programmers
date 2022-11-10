import Foundation

/*
 가위는 2 바위는 0 보는 5로 표현합니다. 가위 바위 보를 내는 순서대로 나타낸 문자열 rsp가 매개변수로 주어질 때, rsp에 저장된 가위 바위 보를 모두 이기는 경우를 순서대로 나타낸 문자열을 return하도록 solution 함수를 완성해보세요.
 */

public func 가위_바위_보(_ rsp: String) -> String {
    var result = String()
    
    for i in rsp {
        if i == "2" {
            result.append("0")
        } else if i == "0" {
            result.append("5")
        } else {
            result.append("2")
        }
    }
    
    return result
}

//다른풀이
//public func solution(_ rsp: String) -> String {
//    return rsp.map { $0 == "0" ? "5" : $0 == "2" ? "0" : "2" }.joined()
//}
