import UIKit
import Foundation

var numlist: [Int] = [1, 2, 3, 4, 5, 6]
var n: Int = 4

var dictionary: [Int:Int] = [:]

for num in numlist {
    dictionary.updateValue(abs(n - num), forKey: num)
}

dictionary

var dicArray = dictionary.sorted { first, second in
    if first.value == second.value {
        return first.key > second.key
    }
    return first.value < second.value
}.map { $0.key }

dicArray
