import Foundation

/*
 대문자와 소문자가 섞여있는 문자열 s가 주어집니다. s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return 하는 solution를 완성하세요. 'p', 'y' 모두 하나도 없는 경우는 항상 True를 리턴합니다. 단, 개수를 비교할 때 대문자와 소문자는 구별하지 않습니다.
 예를 들어 s가 "pPoooyY"면 true를 return하고 "Pyy"라면 false를 return합니다.
 
 제한사항
 - 문자열 s의 길이 : 50 이하의 자연수
 - 문자열 s는 알파벳으로만 이루어져 있습니다.
 */

public func 문자열_내_p와_y의_개수(_ s: String) -> Bool {
    var p: Int = 0
    var y: Int = 0
    
    for i in s {
        if i == "p" || i == "P" {
            p += 1
        } else if i == "y" || i == "Y" {
            y += 1
        }
    }
    
    if p == y {
        return true
    } else {
        return false
    }
}

//다른풀이
//1.갓포넌트
//func solution(_ s: String) -> Bool {
//    let string = s.lowercased()
//    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
//}
//2.갓필터
//func solution(_ s: String) -> Bool {
//    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
//}
