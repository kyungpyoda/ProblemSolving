//
//  Programmers_큰수만들기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/30.
//

import Foundation

class Programmers_큰수만들기 {
    func solution(_ number:String, _ k:Int) -> String {
        let N = number.count
        var stack = [Int]()
        let nums = number.map { Int(String($0))! }
        var i = 0
        var remainCount = k
        while remainCount > 0 && i < N {
            while (stack.last ?? 9) < nums[i] && remainCount > 0 {
                stack.popLast()
                remainCount -= 1
            }
            stack.append(nums[i])
            i += 1
        }
        guard i == N && remainCount == 0 else {
            stack += nums[i..<N]
            return String(stack.reduce("", {$0 + String($1)}).prefix(N-k))
        }
        return stack.reduce("", {$0 + String($1)})
    }
}
