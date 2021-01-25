//
//  Programmers_프린터.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/25.
//

import Foundation

class Programmers_프린터 {
    func solution(_ priorities:[Int], _ location:Int) -> Int {
        let sortedPriorities = priorities.sorted(by: >)
        var index = 0
        var temp = priorities.enumerated().map({($0.element, $0.offset)})
        while temp.count > 0 {
            guard temp.first?.0 == sortedPriorities[index] else {
                temp.append(temp.removeFirst())
                continue
            }
            index += 1
            if temp.first?.1 == location {
                break
            }
            temp.removeFirst()
        }
        return index
    }
}
