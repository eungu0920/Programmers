import Foundation

/*
 등차수열 혹은 등비수열 common이 매개변수로 주어질 때, 마지막 원소 다음으로 올 숫자를 return 하도록 solution 함수를 완성해보세요.
 
 제한사항
 - 2 < common의 길이 < 1,000
 - -1,000 < common의 원소 < 2,000
 - 등차수열 혹은 등비수열이 아닌 경우는 없습니다.
 - 공비가 0인 경우는 없습니다.
 */

func 다음에_올_숫자(_ common:[Int]) -> Int {
    let d: Int = common[1] - common[0]
    let r: Int = common[0] == 0 ? 0 : common[1] / common[0]
    
    if common[1] + d == common[2] {
        return common[common.index(before: common.endIndex)] + d
    } else if common[1] * r == common[2] {
        return common[common.index(before: common.endIndex)] * r
    }
    
    return 0
}

//다른풀이
//func solution(_ common: [Int]) -> Int { common[2] - common[1] == common[1] - common[0] ? common[common.count - 1] + common[1] - common[0] : common[common.count - 1] * common[1] / common[0] }

