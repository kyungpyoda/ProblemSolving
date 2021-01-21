//
//  Programmers_콜라츠추측.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_콜라츠추측 {
    func solution(_ num:Int) -> Int {
        var count = 0
        var num = num
        while num != 1 && count < 500 {
            num = num % 2 == 0 ? num / 2 : num * 3 + 1
            count += 1
        }
        return count == 500 ? -1 : count
    }
}
