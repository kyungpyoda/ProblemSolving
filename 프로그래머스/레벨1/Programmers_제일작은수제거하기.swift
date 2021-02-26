//
//  Programmers_제일작은수제거하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_제일작은수제거하기 {
    func solution(_ arr:[Int]) -> [Int] {
        let min = arr.min()!
        let result =  arr.filter({$0 != min})
        return result.count == 0 ? [-1] : result
    }
}
