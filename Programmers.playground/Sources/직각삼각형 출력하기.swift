import Foundation

/*
 "*"의 높이와 너비를 1이라고 했을 때, "*"을 이용해 직각 이등변 삼각형을 그리려고합니다. 정수 n 이 주어지면 높이와 너비가 n 인 직각 이등변 삼각형을 출력하도록 코드를 작성해보세요.
 */

public func 직각삼각형_출력하기() {
    let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
    
    for i in n {
        for j in 1...i {
            for k in 1...j {
                print("*", terminator: "")
            }
            print()
        }
    }
}

//다른풀이
//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//
//let length = n.first!
//for i in (1...length) {
//    print(String(repeating: "*", count: i))
//}
