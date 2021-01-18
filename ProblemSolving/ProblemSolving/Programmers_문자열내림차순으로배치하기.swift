//
//  Programmers_문자열내림차순으로배치하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/19.
//

import Foundation

class Programmers_문자열내림차순으로배치하기 {
    func solution(_ s:String) -> String {
        return String(s.sorted(by: >))
    }
}
