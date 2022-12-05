import UIKit
import Foundation

var n: Int64 = 12345

var result: String = String(n)
var arr: [Int] = []

while !result.isEmpty {
    arr.append(Int(String(result.removeLast()))!)
}
