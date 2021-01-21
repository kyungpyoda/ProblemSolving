//
//  Programmers_이상한문자만들기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_이상한문자만들기 {
    func solution(_ s:String) -> String {
        var index = 0
        
        return s.reduce("", {
            guard $1 != " " else {
                index = 0
                return $0 + " "
            }
            let temp = index % 2 == 0 ? $0 + $1.uppercased() : $0 + $1.lowercased()
            index += 1
            return temp
        })
    }
}
