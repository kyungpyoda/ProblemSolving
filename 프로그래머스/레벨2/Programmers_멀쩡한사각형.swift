//
//  Programmers_멀쩡한사각형.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/28.
//

import Foundation

class Programmers_멀쩡한사각형 {
    func solution(_ w:Int, _ h:Int) -> Int64{
        var answer: Int64 = Int64(w) * Int64(h)
        var x = 1.0
        var y = 1.0
        while x <= Double(w) && y <= Double(h) {
            answer -= 1
            if x * Double(h) / Double(w) == y {
                x += 1
                y += 1
            } else if x * Double(h) / Double(w) > y {
                y += 1
            } else if x * Double(h) / Double(w) < y {
                x += 1
            }
        }
        return answer
    }
}
