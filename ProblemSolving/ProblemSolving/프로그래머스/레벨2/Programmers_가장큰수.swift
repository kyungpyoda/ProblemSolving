//
//  Programmers_가장큰수.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/31.
//

import Foundation

class Programmers_가장큰수 {
    func solution(_ numbers:[Int]) -> String {
        let answer = numbers.sorted { (l, r) -> Bool in
            guard l != r else { return true }
            return Int("\(l)\(r)")! > Int("\(r)\(l)")!
        }.reduce("", {
            "\($0)\($1)"
        })
        guard answer.first != "0" else { return "0" }
        return answer
    }
}
