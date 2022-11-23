import UIKit
import Foundation

var a: String = "hello"
var b: String = "ohell"

a[a.startIndex]
a[a.index(before: a.endIndex)]
a.insert(a.removeLast(), at: a.startIndex)

var count: Int = 0
for _ in 1...a.count {
    if a == b {
        break
    }
    count += 1
    a.insert(a.removeLast(), at: a.startIndex)
}

var A = "hello"
var B = "lohel"
let arr = (A+A).components(separatedBy: B) // hellohello
arr.count
