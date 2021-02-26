//
//  Programmers_HIndex.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/04.
//

import Foundation

class Programmers_HIndex {
    func solution(_ citations:[Int]) -> Int {
        var h = 0
        while citations.filter({$0>=h}).count >= h {
            h += 1
        }
        return h - 1
    }
}
