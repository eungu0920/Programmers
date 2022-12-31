import Foundation

/*
 어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식을 시저 암호라고 합니다. 예를 들어 "AB"는 1만큼 밀면 "BC"가 되고, 3만큼 밀면 "DE"가 됩니다. "z"는 1만큼 밀면 "a"가 됩니다. 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수, solution을 완성해 보세요.
 
 제한사항
 - 공백은 아무리 밀어도 공백입니다.
 - s는 알파벳 소문자, 대문자, 공백으로만 이루어져 있습니다.
 - s의 길이는 8000이하입니다.
 - n은 1 이상, 25이하인 자연수입니다.
 */

public func 시저_암호(_ s:String, _ n:Int) -> String {
    var result: String = ""
    
    for i in s {
        var ascii = Int(UnicodeScalar(String(i))!.value)
        
        if ascii >= 97 && ascii <= 122 {
            ascii += n
            if ascii > 122 {
                ascii -= 26
            }
        } else if ascii >= 65 && ascii <= 90 {
            ascii += n
            if ascii > 90 {
                ascii -= 26
            }
        } else {
            result += " "
            continue
        }
        
        result += String(UnicodeScalar(ascii)!)
    }
    
    return result
}

//다른풀이
//func solution(_ s:String, _ n:Int) -> String {
//    return s.utf8.map {
//        var code = Int($0)
//        switch code {
//            case 65...90:
//                code = (code + n - 65) % 26 + 65
//            case 97...122:
//                code = (code + n - 97) % 26 + 97
//            default:
//                break
//        }
//        return String(UnicodeScalar(code)!)
//    }.joined()
//}
//
//func solution(_ s:String, _ n:Int) -> String {
//    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
//    return String(s.map {
//        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
//        let letter = alphabets[(index + n) % alphabets.count]
//        return $0.isUppercase ? Character(letter.uppercased()) : letter
//    })
//}
