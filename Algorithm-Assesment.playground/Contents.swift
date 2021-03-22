import UIKit

public func solution(_ N : Int) -> Int {
    let binary = String(N, radix: 2)
    var arrayOfIndex: [Int] = []
    var arrayOfGap: [Int] = []
    
    for (index, char) in binary.enumerated() {
        if char == "1" {
            arrayOfIndex.append(index)
        }
    }
    for index in stride(from: 1, to: arrayOfIndex.count, by: 1) {
        let gap = arrayOfIndex[index] - arrayOfIndex[ index - 1 ]
        arrayOfGap.append(gap - 1)
    }
    arrayOfGap.sort()
    return arrayOfGap.count == 0 ? 0 : arrayOfGap[arrayOfGap.count - 1 ]
}
