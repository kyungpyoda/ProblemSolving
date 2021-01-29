//
//  Programmers_메뉴리뉴얼.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/29.
//

import Foundation

class Programmers_메뉴리뉴얼 {
    var temp: Set<String> = []
    var dict: [String: Int] = [:]
    func solution(_ orders:[String], _ course:[Int]) -> [String] {
        var answer: [String] = []
        for r in course {
            guard r <= orders.max(by: { (l, r) -> Bool in
                return l.count < r.count
            })!.count else {
                break
            }
            temp = []
            dict.removeAll()
            for order in orders {
                combination(total: order.sorted(), shouldSelect: r, current: 0, selected: [])
            }
            guard let max = dict.values.max(),
                  max >= 2 else { continue }
            
            answer = answer + dict.keys.filter {
                dict[$0] == max
            }
        }
        return answer.sorted()
    }
    
    func combination(total: [Character], shouldSelect: Int, current index: Int, selected: [Character]) {
        if shouldSelect == 0 {
            dict[String(selected)] = (dict[String(selected)] ?? 0) + 1
            temp.insert(String(selected))
        } else if index == total.count {
            return
        } else {
            var newSelected = selected
            newSelected.append(total[index])
            combination(total: total, shouldSelect: shouldSelect-1, current: index+1, selected: newSelected)
            combination(total: total, shouldSelect: shouldSelect, current: index+1, selected: selected)
        }
    }
}
