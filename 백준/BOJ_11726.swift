//
//  BOJ_11726.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2020/12/30.
//

import Foundation

class BOJ_11726 {
    func solution() -> String {
        let n = Int(readLine()!)!
        guard n != 1 else { return String(1) }
        var oneCount = n % 2
        var twoCount = n / 2
        var count = 0
        while twoCount >= 0 {
            count += factorial(oneCount + twoCount) / (factorial(oneCount) * factorial(twoCount))
            twoCount -= 1
            oneCount += 2
        }
        return String(count % 10007)
    }
    func factorial(_ n: Int) -> Int {
        return n == 0 ? 1 : (1...n).reduce(1, {$0 * $1})
    }
}
