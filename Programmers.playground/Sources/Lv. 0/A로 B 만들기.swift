import Foundation

/*
 문자열 before와 after가 매개변수로 주어질 때, before의 순서를 바꾸어 after를 만들 수 있으면 1을, 만들 수 없으면 0을 return 하도록 solution 함수를 완성해보세요.
 
 제한사항
 - 0 < before의 길이 == after의 길이 < 1,000
 - before와 after는 모두 소문자로 이루어져 있습니다.
 */

public func A로_B_만들기(_ before: String, _ after: String) -> Int {
    var dictionary: [String:Int] = [:]
        
        for i in before {
            if !dictionary.keys.contains(String(i)) {
                dictionary[String(i)] = 1
            } else {
                dictionary[String(i)]! += 1
            }
        }
        
        for i in after {
            if dictionary.keys.contains(String(i)) {
                dictionary[String(i)]! -= 1
                if dictionary[String(i)]! < 0 {
                    return 0
                }
            } else {
                return 0
            }
        }
        
        return 1
}

//다른풀이
//func solution(_ before: String, _ after: String) -> Int {
//    return Array(before).sorted() == Array(after).sorted() ? 1 : 0
//}
// 와 어떻게 이런 간단한 방법이... 꿈에도 생각 못 했다... 단순히 before.sorted() == after.sorted() ? 1 : 0 으로도 풀 수 있다.
