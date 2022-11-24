import Foundation

/*
 다음 그림과 같이 지뢰가 있는 지역과 지뢰에 인접한 위, 아래, 좌, 우 대각선 칸을 모두 위험지역으로 분류합니다.
 지뢰는 2차원 배열 board에 1로 표시되어 있고 board에는 지뢰가 매설 된 지역 1과, 지뢰가 없는 지역 0만 존재합니다.
 지뢰가 매설된 지역의 지도 board가 매개변수로 주어질 때, 안전한 지역의 칸 수를 return하도록 solution 함수를 완성해주세요.
 
 제한사항
 - board는 n * n 배열입니다.
 - 1 ≤ n ≤ 100
 - 지뢰는 1로 표시되어 있습니다.
 - board에는 지뢰가 있는 지역 1과 지뢰가 없는 지역 0만 존재합니다.
 */

public func 안전지대(_ board: [[Int]]) -> Int {
    var testCase = board
    var visit = board
    
    var count: Int = 0
    
    let nx = [-1, -1, -1, 0, 0, 1, 1, 1]
    let ny = [-1, 0, 1, -1, 1, -1, 0, 1]
    
    for x in 0...testCase[0].count - 1 {
        for y in 0...testCase.count - 1 {
            if testCase[x][y] == 1 {
                count += 1
                for i in 0...7 {
                    var mx = x + nx[i]
                    var my = y + ny[i]
                    if mx >= 0 && mx < testCase[0].count && my >= 0 && my < testCase.count && visit[mx][my] != 1{
                        visit[mx][my] = 1
                        count += 1
                    }
                }
            }
        }
    }
    
    return testCase.count * testCase[0].count - count
}

//옛날에 C++로 DFS/BFS 문제 풀 때가 생각난다... 지금은 까먹어서 Swift로 다시 공부해야겠다ㅠㅠ 그래도 나름 재미있었다...
