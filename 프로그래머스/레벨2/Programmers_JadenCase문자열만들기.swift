//
//  Programmers_JadenCase문자열만들기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/11.
//

import Foundation

class Programmers_JadenCase문자열만들기 {
    func solution(_ s:String) -> String {
        var before: Character = " "
        return String(s.map {
            let c = before == " " ? Character($0.uppercased()) : Character($0.lowercased())
            before = $0
            return c
        })
    }
}
