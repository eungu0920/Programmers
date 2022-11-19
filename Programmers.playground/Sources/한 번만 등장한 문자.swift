import Foundation

/*
 문자열 s가 매개변수로 주어집니다. s에서 한 번만 등장하는 문자를 사전 순으로 정렬한 문자열을 return 하도록 solution 함수를 완성해보세요. 한 번만 등장하는 문자가 없을 경우 빈 문자열을 return 합니다.
 */

public func 한_번만_등장한_문자(_ s: String) -> String {
    var dictionary = [String:Int]()
    var result: String = ""
    
    for i in s {
        if !dictionary.keys.contains(String(i)) {
            dictionary[String(i)] = 1
        } else {
            dictionary[String(i)]! += 1
        }
    }
    
    for i in dictionary.sorted(by: { first, second in
        return first.key < second.key
    }) {
        if i.value == 1 {
            result.append(i.key)
        }
    }
    
    return result
}

//다른풀이
//func solution(_ s: String) -> String {
//    var counter: [Character:Int] = [:]
//    for char in s {
//        counter[char] = (counter[char] ?? 0) + 1
//    }
//    
//    return counter.filter { $0.value == 1 }.keys.sorted().reduce("") { $0 + String($1) }
//}
