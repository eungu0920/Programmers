import Foundation

/*
 영어 점수와 수학 점수의 평균 점수를 기준으로 학생들의 등수를 매기려고 합니다. 영어 점수와 수학 점수를 담은 2차원 정수 배열 score가 주어질 때, 영어 점수와 수학 점수의 평균을 기준으로 매긴 등수를 담은 배열을 return하도록 solution 함수를 완성해주세요.
 
 제한사항
 - 0 ≤ score[0], score[1] ≤ 100
 - 1 ≤ score의 길이 ≤ 10
 - score의 원소 길이는 2입니다.
 - score는 중복된 원소를 갖지 않습니다.
 */

public func 등수_매기기(_ score:[[Int]]) -> [Int] {
    var mutableScore: [Double] = []
    for change in score {
        mutableScore.append((Double(change[0]) + Double(change[1]))/2)
    }
    var sortedScore = mutableScore.sorted(by: >)
    var rankDictionary: [Double:Int] = [:]
    var rank: Int = 1
    var result: [Int] = []

    while !sortedScore.isEmpty {
        var score = sortedScore.removeFirst()
        if !rankDictionary.keys.contains(score) {
            rankDictionary.updateValue(rank, forKey: score)
        }
        rank += 1
    }

    for list in mutableScore {
        result.append(rankDictionary[list]!)
    }

    return result
}

//다른풀이
//func solution(_ score: [[Int]]) -> [Int] {
//    return score.map { Double($0.reduce(0, +)) / Double($0.count) }.map { score.map { Double($0.reduce(0, +)) / Double($0.count) }.sorted(by: >).firstIndex(of: $0)! + 1 }
//}
//각 요소 평균 값을 정렬하여, firstIndex(값이 처음으로 나오는 인덱스 반환) 메소드를 사용하여 각 요소 평균의 순서에 맞게 값을 반환함
//고차함수를 사용하여 간단하게 정리하려고 했다가 실패했는데 이런 방법이 있었다니...
