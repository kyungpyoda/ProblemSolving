//
//  Programmers_하샤드수.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_하샤드수 {
    func solution(_ x:Int) -> Bool {
        return x % String(x).reduce(0, {$0 + Int(String($1))!}) == 0
    }
}
