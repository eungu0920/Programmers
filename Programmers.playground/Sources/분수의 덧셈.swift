import Foundation

/*
 첫 번째 분수의 분자와 분모를 뜻하는 denum1, num1, 두 번째 분수의 분자와 분모를 뜻하는 denum2, num2가 매개변수로 주어집니다. 두 분수를 더한 값을 기약 분수로 나타냈을 때 분자와 분모를 순서대로 담은 배열을 return 하도록 solution 함수를 완성해보세요.
 */

// 처음 푼 풀이
private func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

private func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

public func 분수의_덧셈(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    var num3: Int = lcm(num1, num2)
    var denum3: Int = 0

    if num1 == num3 {
        denum3 += denum1
    } else {
        denum3 += denum1 * num3 / num1
    }

    if num2 == num3 {
        denum3 += denum2
    } else {
        denum3 += denum2 * num3 / num2
    }

    let num = gcd(denum3, num3)

    denum3 = denum3 / num
    num3 = num3 / num

    return [denum3, num3]
}

//더 나은 풀이
//private func gcd(_ a: Int, _ b: Int) -> Int {
//    if b == 0 {
//        return a
//    } else {
//        return gcd(b, a % b)
//    }
//}
//
//public func 분수의_덧셈(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
//    var denominator: Int = denum1 * num2 + denum2 * num1
//    var numerator: Int = num1 * num2
//
//    let num = gcd(denominator, numerator)
//
//    denominator = denominator / num
//    numerator = numerator / num
//
//    return [denominator, numerator]
//}
