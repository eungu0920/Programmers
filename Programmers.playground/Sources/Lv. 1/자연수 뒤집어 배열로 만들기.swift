import Foundation

/*
 자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
 
 제한사항
 - n은 10,000,000,000이하인 자연수입니다.
 */

public func 자연수_뒤집어_배열로_만들기(_ n:Int64) -> [Int] {
    var mutableN: String = String(n)
    var result: [Int] = []
    
    while !mutableN.isEmpty {
        result.append(Int(String(mutableN.removeLast()))!)
    }
    
    return result
}

//다른풀이
//func solution(_ n:Int64) -> [Int] {
//    return  "\(n)".compactMap { $0.hexDigitValue }.reversed()
//}
//compactMap, hexDigitValue 메소드 배우기
