//
//  Programmers_내적.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/19.
//

import Foundation

class Programmers_내적 {
    func solution(_ a:[Int], _ b:[Int]) -> Int {
        return (0..<a.count).reduce(0, { $0 + a[$1]*b[$1] })
    }
}
