import Foundation

/*
 단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.

 제한사항
 - s는 길이가 1 이상, 100이하인 스트링입니다.
 */

public func 가운데_글자_가져오기(_ s: String) -> String {
    var result: String = ""
    if s.count % 2 == 0 {
        result.append(s[s.index(s.startIndex, offsetBy: s.count/2 - 1)])
        result.append(s[s.index(s.startIndex, offsetBy: s.count/2)])
    } else {
        result.append(s[s.index(s.startIndex, offsetBy: s.count/2)])
    }
    return result
}

//다른풀이
//func solution(_ s: String) -> String {
//    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
//} -> String.Index(encodedOffset: _) 메소드는 -> String.Index(utf16Offset: _, in: _)으로 대체 할 수 있다. 아니 대체 되어야하나?

//func solution(_ s: String) -> String {
//    if Array(s).count % 2 == 0 {
//        return String(Array(s)[(s.count/2)-1...(s.count/2)])
//    }else{
//        return String(Array(s)[s.count/2])
//    }
//}
