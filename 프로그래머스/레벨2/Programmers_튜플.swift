//
//  Programmers_튜플.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/07.
//

import Foundation

class Programmers_튜플 {
    func solution(_ s:String) -> [Int] {
        let arr = s.components(separatedBy: ["{","}",","]).compactMap({Int($0)})
        var dict = [Int: Int]()
        for n in arr {
            dict[n] = (dict[n] ?? 0) + 1
        }
        return dict.sorted(by: { (l, r) -> Bool in
            l.value > r.value
        }).map({
            $0.key
        })
    }
}
