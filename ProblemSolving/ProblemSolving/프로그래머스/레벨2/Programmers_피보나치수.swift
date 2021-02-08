//
//  Programmers_피보나치수.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/08.
//

import Foundation

class Programmers_피보나치수 {
    func solution(_ n:Int) -> Int {
        var f = [Int](repeating: 0, count: n+1)
        f[0] = 0
        f[1] = 1
        for i in 2...n {
            f[i] = f[i-2] % 1234567 + f[i-1] % 1234567
        }
        return f[n] % 1234567
    }
    func fib(_ n: Int) -> Int {
        guard n != 0 || n != 1 else { return n == 0 ? 0 : 1 }
        return fib(n-2) + fib(n-1)
    }
}
