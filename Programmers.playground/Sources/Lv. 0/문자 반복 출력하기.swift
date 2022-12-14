import Foundation

/*
 문자열 my_string과 정수 n이 매개변수로 주어질 때, my_string에 들어있는 각 문자를 n만큼 반복한 문자열을 return 하도록 solution 함수를 완성해보세요.
 */

public func 문자_반복_출력하기(_ my_string: String, _ n: Int) -> String {
    var result: String = ""
    for i in my_string {
        for _ in 1...n {
            result.append(i)
        }
    }
    return result
}

//다른풀이
//func solution(_ my_string: String, _ n: Int) -> String {
//    return my_string.map( {
//        String(repeating: $0, count: n)
//    } ).joined()
//}
