//
//  Programmers_풍선터트리기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/24.
//

import Foundation

class Programmers_풍선터트리기 {
    func solution(_ a:[Int]) -> Int {
        var answer = 0
        let n = a.count
        guard n > 2 else { return n }
        var leftMin = [Int](repeating: 0, count: n)
        var rightMin = [Int](repeating: 0, count: n)
        leftMin[0] = Int.max
        rightMin[n-1] = Int.max
        for i in 1..<n {
            leftMin[i] = leftMin[i-1] > a[i-1] ? a[i-1] : leftMin[i-1]
            rightMin[n-1-i] = rightMin[n-i] > a[n-i] ? a[n-i] : rightMin[n-i]
        }
        for i in 0..<a.count {
            if max(leftMin[i], rightMin[i], a[i]) != a[i] {
                answer += 1
            }
        }
        return answer
    }
}
