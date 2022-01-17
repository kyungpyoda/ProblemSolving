//
//  Programmers_부족한금액계산하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_부족한금액계산하기 {
    func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
        let totalPrice = count * (count + 1) / 2 * price
        let diff = totalPrice - money
        return Int64(diff >= 0 ? diff : 0)
    }
}
