//
//  Programmers_스킬트리.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/25.
//

import Foundation

class Programmers_스킬트리 {
    func solution(_ skill:String, _ skill_trees:[String]) -> Int {
        var count = 0
        for skillTree in skill_trees {
            var temp = skill.reversed().map({$0})
            var flag = true
            for c in skillTree {
                guard temp.contains(c) else { continue }
                if temp.last == c {
                    temp.popLast()
                } else {
                    flag = false
                    break
                }
            }
            count = flag ? count + 1 : count
        }
        return count
    }
}
