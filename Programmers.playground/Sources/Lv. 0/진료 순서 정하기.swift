import Foundation

/*
 외과의사 머쓱이는 응급실에 온 환자의 응급도를 기준으로 진료 순서를 정하려고 합니다. 정수 배열 emergency가 매개변수로 주어질 때 응급도가 높은 순서대로 진료 순서를 정한 배열을 return하도록 solution 함수를 완성해주세요.
 */

public func 진료_순서_정하기(_ emergency: [Int]) -> [Int] {
    var temp = [Int : Int]()
    var result: [Int] = [Int](repeating: 0, count: emergency.count)
    
    var count = 1
    
    for i in emergency {
        temp.updateValue(i, forKey: count)
        count += 1
    }
    
    var rank: Int = 1
    
    for i in temp.sorted() { $0.1 > $1.1 } {
        result[i.key - 1] = rank
        rank += 1
    }

    return result
}

//다른풀이
//func solution(_ emergency: [Int]) -> [Int] {
//    return emergency.map { data in
//        emergency.filter { $0 > data }.count + 1
//    }
//}
