//
//  Programmers_카펫.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/05.
//

import Foundation

class Programmers_카펫 {
    func solution(_ brown:Int, _ yellow:Int) -> [Int] {
        //(x-2)*(y-2) = yellow
        //xy = yellow + brown
        //xy - 2y - 2x + 4 = yellow
        //x + y = (brown + 4) / 2
        let xy = brown + yellow
        for y in 1...xy {
            var x = (brown + 4) / 2 - y
            if x * y == xy {
                return [x, y]
            }
        }
        assert(true, "No fucking way")
        return []
    }
}
