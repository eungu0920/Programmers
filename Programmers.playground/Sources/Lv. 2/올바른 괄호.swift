import Foundation

/*
 괄호가 바르게 짝지어졌다는 것은 '(' 문자로 열렸으면 반드시 짝지어서 ')' 문자로 닫혀야 한다는 뜻입니다.
 
 예를 들어
 - "()()" 또는 "(())()" 는 올바른 괄호입니다.
 - ")()(" 또는 "(()(" 는 올바르지 않은 괄호입니다.
 
 '(' 또는 ')' 로만 이루어진 문자열 s가 주어졌을 때, 문자열 s가 올바른 괄호이면 true를 return 하고, 올바르지 않은 괄호이면 false를 return 하는 solution 함수를 완성해 주세요.
 
 제한사항
 - 문자열 s의 길이 : 100,000 이하의 자연수
 - 문자열 s는 '(' 또는 ')' 로만 이루어져 있습니다.
 */

public func 올바른_괄호(_ s: String) -> Bool {
    var Stack: [String] = []
        
        for i in s {
            if i == "(" {
                Stack.append(String(i))
            } else {
                if Stack.isEmpty {
                    return false
                } else {
                    Stack.removeLast()
                }
            }
        }
        
        if Stack.isEmpty {
            return true
        } else {
            return false
        }
}

//다른풀이
//func solution(_ s:String) -> Bool {
//    var ans:Bool = false
//
//    var openCnt: Int = 0, closeCnt: Int = 0
//
//    for ch in s {
//        switch ch {
//        case "(":
//            openCnt += 1
//        case ")":
//            closeCnt += 1
//        default:
//            break
//        }
//
//        guard openCnt >= closeCnt else {
//            break
//        }
//    }
//
//    ans = openCnt == closeCnt
//
//    return ans
//}
