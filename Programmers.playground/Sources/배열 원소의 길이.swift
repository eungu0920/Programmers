import Foundation

/*
 문자열 배열 strlist가 매개변수로 주어집니다. strlist 각 원소의 길이를 담은 배열을 retrun하도록 solution 함수를 완성해주세요.
 */

public func 배열_원소의_길이(_ strlist: [String]) -> [Int] {
    var result = [Int]() // 빈 Int 배열 생성
    
    for i in strlist {
        result.append(i.count)
    }
    
    return result
}

//다른 풀이
//func solution(_ strlist: [String]) -> [Int] {
//    return strlist.map({ $0.count })
//}
