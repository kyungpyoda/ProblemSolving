//
//  Programmers_다음큰숫자.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/02/07.
//

import Foundation

class Programmers_다음큰숫자 {
    func solution(_ n:Int) -> Int {
        let targetOneCount = String(n, radix: 2).filter({$0=="1"}).count
        var current = n + 1
        while true {
            let oneCount = String(current, radix: 2).filter({$0=="1"}).count
            guard oneCount != targetOneCount else { break }
            current += 1
        }
        return current
        /**
         Int의 nonezeroBitCount 사용하면 이진수로 변환했을 때 1의 갯수 바로 알 수 있음!!
         let x: Int8 = 0b0001_1111
         // x == 31
         // x.nonzeroBitCount == 5
         */
    }
}
