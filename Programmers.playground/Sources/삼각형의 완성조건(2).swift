import Foundation

/*
 선분 세 개로 삼각형을 만들기 위해서는 다음과 같은 조건을 만족해야 합니다.
- 가장 긴 변의 길이는 다른 두 변의 길이의 합보다 작아야 합니다.
 삼각형의 두 변의 길이가 담긴 배열 sides이 매개변수로 주어집니다. 나머지 한 변이 될 수 있는 정수의 개수를 return하도록 solution 함수를 완성해주세요.
 
 제한사항
 - sides의 원소는 자연수입니다.
 - sides의 길이는 2입니다.
 - 1 ≤ sides의 원소 ≤ 1,000
 */

public func 삼각형의_완성조건_2(_ sides: [Int]) -> Int {
    let longest: Int = sides.max()!
    let shortest: Int = sides.min()!
    let sum: Int = sides.reduce(0, +)
    var count: Int = 0
    var temp: Int = 0
    
    temp = longest - shortest + 1
    while longest >= temp && longest < temp + shortest {
        count += 1
        temp += 1
    }
    
    temp = longest + 1
    while sum > temp {
        count += 1
        temp += 1
    }
    
    return count
}

//다른풀이
//func solution(_ sides: [Int]) -> Int { sides.max()! - (sides.max()! - sides.min()!) + sides.reduce(0, +) - sides.max()! - 1 }
//공식 띠용...
