import Foundation

/*
 영어 대소문자로 이루어진 문자열 my_string이 매개변수로 주어질 때, my_string을 모두 소문자로 바꾸고 알파벳 순서대로 정렬한 문자열을 return 하도록 solution 함수를 완성해보세요.
 */

public func 문자열_정렬하기_2(_ my_string: String) -> String {
    my_string.map { $0.lowercased() }.sorted().joined()
}

// 고차함수인 map을 이용해서 훨씬 간결하게 표현하니까 재미있다.
// 그러나 치명적인 단점으로는 너무 간결해지는 탓에 가독성이 떨어진다는 점이 있다.
