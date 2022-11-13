import UIKit
import Foundation
 

debugPrint(n의_배수_고르기(3, [4,5,6,7,8,9,10,11,12]))

func solution(_ n: Int, _ numlist: [Int]) -> [Int] {
    numlist.filter{ $0 % n == 0 }
}

solution(3, [4,5,6,7,8,9,10,11,12])
