//
//  Programmers_올바른괄호.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/07.
//

import Foundation

class Programmers_올바른괄호 {
    func solution(_ s:String) -> Bool {
        var flag = 0
        for c in s {
            flag = c == "(" ? flag+1 : flag-1
            guard flag >= 0 else { return false }
        }
        return flag == 0
    }
}
