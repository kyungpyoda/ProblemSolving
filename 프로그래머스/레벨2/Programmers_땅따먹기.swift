//
//  Programmers_땅따먹기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/07.
//

import Foundation

class Programmers_땅따먹기 {
    func solution(_ land:[[Int]]) -> Int {
        let N = land.count
        var dp = land
        guard N != 1 else { return land[0].max()! }
        for i in 1..<N {
            dp[i][0] += max(dp[i-1][1], dp[i-1][2], dp[i-1][3])
            dp[i][1] += max(dp[i-1][0], dp[i-1][2], dp[i-1][3])
            dp[i][2] += max(dp[i-1][0], dp[i-1][1], dp[i-1][3])
            dp[i][3] += max(dp[i-1][0], dp[i-1][1], dp[i-1][2])
        }
        return dp[N-1].max()!
    }
}
