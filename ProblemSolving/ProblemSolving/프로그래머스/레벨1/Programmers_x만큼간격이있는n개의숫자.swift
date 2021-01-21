//
//  Programmers_x만큼간격이있는n개의숫자.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_x만큼간격이있는n개의숫자 {
    func solution(_ x:Int, _ n:Int) -> [Int64] {
        var answer = [Int64](repeating: 0, count: n)
        (0..<n).forEach { i in
            answer[i] = Int64(x * (i + 1))
        }
        return answer
    }
}
