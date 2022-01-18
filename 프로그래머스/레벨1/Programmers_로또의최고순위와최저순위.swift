//
//  Programmers_로또의최고순위와최저순위.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/16.
//

import Foundation

class Programmers_로또의최고순위와최저순위 {
    func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
        var winNums = Set(win_nums)
        var zeros: Int = 0
        for n in lottos {
            if n == 0 { zeros += 1 }
            winNums.remove(n)
        }
        return [
            calcRank(winNums.count - zeros), 
            calcRank(winNums.count)
        ]
    }

    func calcRank(_ remainCount: Int) -> Int {
        return min(remainCount + 1, 6)
    }
}
