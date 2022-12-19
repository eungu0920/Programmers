import Foundation

/*
 두 정수 left와 right가 매개변수로 주어집니다. left부터 right까지의 모든 수들 중에서, 약수의 개수가 짝수인 수는 더하고, 약수의 개수가 홀수인 수는 뺀 수를 return 하도록 solution 함수를 완성해주세요.
 
 제한사항
 - 1 ≤ left ≤ right ≤ 1,000
 */

private func division(_ num: Int) -> Int {
    var count: Int = 0
    var div: Int = num
    
    while div > 0 {
        if num % div == 0 {
            count += 1
        }
        div -= 1
    }
    
    return count
}

public func 약수의_개수와_덧셈(_ left: Int, _ right: Int) -> Int {
    var result: Int = 0
    
    for num in left...right {
        if division(num) % 2 == 0 {
            result += num
        } else {
            result -= num
        }
    }
    
    return result
}

//다른풀이
//엄청 깔끔한 풀이... 이렇게 깔끔하게 풀고싶었는데 길게 만들어버렸따...
//func solution(_ left: Int, _ right: Int) -> Int {
//    return (left...right).map { i in (1...i).filter { i % $0 == 0 }.count % 2 == 0 ? i : -i }.reduce(0, +)
//}
//어떤수의 제곱근이 정수이면 어떤수의 약수 개수가 홀수... 머박스 아니면 약수의 개수가 짝수...
//func solution(_ left:Int, _ right:Int) -> Int {
//    var answer = 0
//
//    for number in left...right{
//        if floor(sqrt(Double(number))) == sqrt(Double(number)) {
//            answer -= number
//        } else {
//            answer += number
//        }
//    }
//    return answer
//}
