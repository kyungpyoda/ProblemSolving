//
//  Programmers_예상대진표.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/12.
//

import Foundation

class Programmers_예상대진표 {
    func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
        //8 4 7
        //2 4
        //1 2
        var answer = 1
        var x = a
        var y = b
        if a > b {
            let temp = x
            x = y
            y = temp
        }
        while x+1 != y || x%2 == 0 {
            x = x%2==0 ? x/2 : x/2+1
            y = y%2==0 ? y/2 : y/2+1
            answer += 1
        }
        return answer
    }
}
