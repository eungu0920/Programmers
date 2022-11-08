import UIKit
import Foundation

func solution(_ n: Int) {
    
    for i in 1...n {
        for j in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}

solution(3)
