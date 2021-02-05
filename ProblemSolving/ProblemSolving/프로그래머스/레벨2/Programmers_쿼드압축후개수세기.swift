//
//  Programmers_쿼드압축후개수세기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/05.
//

import Foundation

class Programmers_쿼드압축후개수세기 {
    func solution(_ arr:[[Int]]) -> [Int] {
        let answer = countZeroOne(of: arr)
        return [answer.0, answer.1]
    }
    
    func countZeroOne(of arr: [[Int]]) -> (Int, Int) {
        let N = arr.count
        guard N != 1 else {
            return arr[0][0] == 0 ? (1, 0) : (0, 1)
        }
        var oneCount = 0
        var zeroCount = 0
        for r in arr {
            for e in r {
                if e == 0 {
                    zeroCount += 1
                } else {
                    oneCount += 1
                }
            }
        }
        if zeroCount == N*N {
            return (1, 0)
        } else if oneCount == N*N {
            return (0, 1)
        } else {
            let half = N / 2
            let a = Array(arr[0..<half]).map({Array($0[0..<half])})
            let b = Array(arr[0..<half]).map({Array($0[half..<N])})
            let c = Array(arr[half..<N]).map({Array($0[0..<half])})
            let d = Array(arr[half..<N]).map({Array($0[half..<N])})
            return [countZeroOne(of: a),
                    countZeroOne(of: b),
                    countZeroOne(of: c),
                    countZeroOne(of: d)].reduce((0,0), {
                        ($0.0+$1.0, $0.1+$1.1)
                        
                    })
        }
    }
}
