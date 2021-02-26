//
//  Programmers_[3차]N진수게임.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/26.
//

import Foundation

class Programmers_N진수게임 {
    func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
        let last = m * (t - 1) + (p - 1)
        var arr = [Character]()
        var num = 0
        while arr.count-1 < last {
            arr += Array(String(num, radix: n))
            num += 1
        }
        return arr.enumerated().filter {
            $0.offset % m == p-1 && $0.offset <= last
        }.reduce("", {
            $0 + $1.element.uppercased()
        })
    }
}
