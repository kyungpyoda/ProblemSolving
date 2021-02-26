//
//  Programmers_실패율.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_실패율 {
    func solution(_ N:Int, _ stages:[Int]) -> [Int] {
        var arr = [Int](repeating: 0, count: N)
        for stage in stages {
            guard stage <= N else { continue }
            arr[stage - 1] += 1
        }
        var total = stages.count
        let result: [(Int, Double)] = (0..<N).map({ i in
            let temp = total
            total -= arr[i]
            return temp > 0 ? (i, Double(arr[i]) / Double(temp)) : (i, 0)
        })
        return result.sorted { (left, right) -> Bool in
            return left.1 != right.1 ? left.1 > right.1 : left.0 < right.0
        }.map {
            $0.0 + 1
        }
    }
}
