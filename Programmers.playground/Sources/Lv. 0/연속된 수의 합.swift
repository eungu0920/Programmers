import Foundation

/*
 연속된 세 개의 정수를 더해 12가 되는 경우는 3, 4, 5입니다. 두 정수 num과 total이 주어집니다. 연속된 수 num개를 더한 값이 total이 될 때, 정수 배열을 오름차순으로 담아 return하도록 solution함수를 완성해보세요.
 
 제한사항
 - 1 ≤ num ≤ 100
 - 0 ≤ total ≤ 1000
 - num개의 연속된 수를 더하여 total이 될 수 없는 테스트 케이스는 없습니다.
 */

public func 연속된_수의_합(_ num: Int, _ total: Int) -> [Int] {
    var result: [Int] = []
        
        // if Evne
        if num % 2 == 0 {
            for i in (-(num/2)+1)...num/2 {
                result.append(total/num+i)
            }
        }
        
        // if Odd
        if num % 2 == 1 {
            for i in -(num/2)...num/2 {
                result.append(total/num+i)
            }
        }
        
        return result
}

//다른풀이
//func solution(_ num:Int, _ total:Int) -> [Int] {
//    let mid = total / num
//    let min = num % 2 == 1 ? mid - (num / 2) : mid - (num / 2 - 1)
//    let max = num % 2 == 1 ? mid + (num / 2) : mid + (num / 2)
//    return Array(min...max)
//}
