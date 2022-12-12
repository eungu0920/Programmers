import Foundation

/*
 이 문제에는 표준 입력으로 두 개의 정수 n과 m이 주어집니다.
 별(*) 문자를 이용해 가로의 길이가 n, 세로의 길이가 m인 직사각형 형태를 출력해보세요.

 제한사항
 - n과 m은 각각 1000 이하인 자연수입니다.
 */

public func 직사각형_별찍기() {
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
    let (a, b) = (n[0], n[1])
    
    for _ in 1...b {
        for _ in 1...a {
            print("*", terminator: "")
        }
        print()
    }
}

//다른풀이
//func solution {
//    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//    print(String(repeating: String(repeating: "*", count: n[0])+"\n", count: n[1]))
//}
