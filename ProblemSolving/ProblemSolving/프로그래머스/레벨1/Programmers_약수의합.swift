//
//  Programmers_약수의합.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_약수의합 {
    func solution(_ n:Int) -> Int {
        return n == 0 ? 0 : (1...n).filter {
            n % $0 == 0
        }.reduce(0, +)
    }
}
