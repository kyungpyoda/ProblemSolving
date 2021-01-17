//
//  Programmers_문자열내p와y의개수.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation

func solution(_ s:String) -> Bool {
    var count = 0
    s.forEach {
        if $0 == "p" || $0 == "P" {
            count += 1
        } else if $0 == "y" || $0 == "Y" {
            count -= 1
        }
    }
    return count == 0
}
