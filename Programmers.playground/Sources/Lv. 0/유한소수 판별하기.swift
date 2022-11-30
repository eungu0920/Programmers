import Foundation

/*
 소수점 아래 숫자가 계속되지 않고 유한개인 소수를 유한소수라고 합니다. 분수를 소수로 고칠 때 유한소수로 나타낼 수 있는 분수인지 판별하려고 합니다. 유한소수가 되기 위한 분수의 조건은 다음과 같습니다.
 - 기약분수로 나타내었을 때, 분모의 소인수가 2와 5만 존재해야 합니다.
 두 정수 a와 b가 매개변수로 주어질 때, a/b가 유한소수이면 1을, 무한소수라면 2를 return하도록 solution 함수를 완성해주세요.
 
 제한사항
 - a, b는 정수
 - 0 < a ≤ 1,000
 - 0 < b ≤ 1,000
 */

private func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

private func primeFactorization(_ number: Int) -> Int {
    let answer: [[Int]] = [[2], [5], [2, 5]]
    var result: [Int] = []
    var division: Int = 2
    var mutableNumber = number

    while mutableNumber > 1 {
        if mutableNumber % division != 0 {
            division += 1
        } else {
            mutableNumber /= division
            if result.contains(division) {
                continue
            } else {
                result.append(division)
            }
        }
    }

    if answer.contains(result) {
        return 1
    } else {
        return 2
    }
}

public func 유한소수_판별하기(_ a: Int, _ b: Int) -> Int {
    if b / gcd(a, b) == 1 {
        return 1
    } else {
        return primeFactorization(b / gcd(a, b))
    }
}
