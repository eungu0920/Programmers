import Foundation

/*
 머쓱이네 피자가게는 피자를 두 조각에서 열 조각까지 원하는 조각 수로 잘라줍니다. 피자 조각 수 slice와 피자를 먹는 사람의 수 n이 매개변수로 주어질 때, n명의 사람이 최소 한 조각 이상 피자를 먹으려면 최소 몇 판의 피자를 시켜야 하는지를 return 하도록 solution 함수를 완성해보세요.
 */

public func 피자_나눠_먹기_3(_ slice: Int, _ n: Int) -> Int {
    let result: Int = ((n - 1) / slice) + 1
    
    return result
}

//다른 풀이
//var result: Int = n % slice == 0 ? n / slice : n / slice + 1


//처음 푼 풀이 -> 왜 런타임 에러가 났지?
//public func 피자_나눠_먹기_3(_ slice: Int, _ n: Int) -> Int {
//    var result: Int = n / slice
//    var num: Int = n % slice
//
//    if num > 0 {
//        result += 1
//    }
//
//    return result
//}
//타입 캐스팅이 오류가 있었던 것으로 판명됨
//통과된 풀이
//func 피자_나눠_먹기(_ slice: Int, _ n: Int) -> Int {
//    var result = Double(n / slice)
//    var num = Double(n % slice)
//
//    if num > 0 {
//        result += 1
//    }
//
//    return Int(result)
//}
