//
//  Programmers_점프와순간이동.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/12.
//

import Foundation

class Programmers_점프와순간이동 {
    func solution(_ n:Int) -> Int {
        // 5000 2500 1250 625 624 312 156 78 39 38 19 18 9 8 4 2 1 0
        //                   1                 1     1    1       1
        var n = n
        var answer = 0
        while n != 0 {
            if n % 2 == 0 {
                n /= 2
            } else {
                n -= 1
                answer += 1
            }
        }
        return 1
    }
}
