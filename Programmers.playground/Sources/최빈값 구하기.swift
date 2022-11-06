import Foundation

/*
 최빈값은 주어진 값 중에서 가장 자주 나오는 값을 의미합니다. 정수 배열 array가 매개변수로 주어질 때, 최빈값을 return 하도록 solution 함수를 완성해보세요. 최빈값이 여러 개면 -1을 return 합니다.
 */

public func 최빈값_구하기(_ array: [Int]) -> Int {
    var result = [Int](repeating: 0, count: 1000)
    
    for i in array {
        result[i] += 1
    }
    
    var max = 0
    var result_number = 0
    var count = 0
    
    for i in 0...999 {
        if result[i] >= max {
            max = result[i]
            result_number = i
        }
    }
    
    for i in 0...999 {
        if result[i] == max {
            count += 1
        }
    }
    
    if count > 1 {
        return -1
    }
    
    return result_number
}

//나중에 Dictionary를 사용해서 다시 한번 풀어보기
