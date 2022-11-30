import Foundation

public func 배열_자르기(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
//    내가 푼 방법
    let count = num2 - num1 + 1
    var result = [Int](repeating: 0, count: count)
    var index: Int = 0

    for i in num1...num2 {
        result[index] = numbers[i]
        index += 1
    }

    return result
    
    
//    다른 사람 풀이 1
//    return Array(numbers[num1...num3])
    
//    다른 사람 풀이 2
//    var result = [Int]()
//
//    for idx in num1...num2 {
//        result.append(numbers[idx])
//    }
//
//    return result
}
