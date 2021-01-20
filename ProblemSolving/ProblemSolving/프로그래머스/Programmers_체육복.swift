//
//  Programmers_체육복.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation

class Programmers_체육복 {
    func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
        var lostSet = Set(lost.sorted())
        var reserveSet = Set(reserve)
        var count = n - lost.count
        for l in lostSet {
            if reserveSet.contains(l) {
                reserveSet.remove(l)
                lostSet.remove(l)
                count += 1
            }
        }
        for l in lostSet {
            if reserveSet.contains(l-1) {
                reserveSet.remove(l-1)
                count += 1
            } else if reserveSet.contains(l+1) {
                reserveSet.remove(l+1)
                count += 1
            }
        }
        return count
    }
}
