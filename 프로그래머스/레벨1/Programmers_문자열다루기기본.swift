//
//  Programmers_문자열다루기기본.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/19.
//

import Foundation

class Programmers_문자열다루기기본 {
    func solution(_ s:String) -> Bool {
        return (s.count == 4 || s.count == 6) && Int(s) != nil
    }
}
