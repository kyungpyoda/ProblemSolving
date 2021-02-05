//
//  Programmers_타겟넘버.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/05.
//

import Foundation

class Programmers_타겟넘버 {
    var t = 0
    var N = 0
    var nums = [Int]()
    var answer = 0
    func solution(_ numbers:[Int], _ target:Int) -> Int {
        t = target
        N = numbers.count
        nums = numbers
        test(index: 0, current: 0)
        return answer
    }
    func test(index: Int, current: Int) {
        guard index != N else {
            if current == t {
                answer += 1
            }
            return
        }
        test(index: index+1, current: current + nums[index])
        test(index: index+1, current: current - nums[index])
    }
}
