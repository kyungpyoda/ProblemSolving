//
//  Programmers_조이스틱.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/30.
//

import Foundation

class Programmers_조이스틱 {
    /**
     문제 오류로 그냥 접음.
     문제 설명의 로직에서는
     BBBAAB 가 9이 아닌 8이 나와야 함.
     풀이는 맞는 것 같지만 채점 로직 오류로 4, 7, 8번 케이스 통과가 안 됨.
     */
    func solution(_ name:String) -> Int {
        var answer = 0
        for c in name {
            let diff = 13 - abs(Int(c.asciiValue! - Character("A").asciiValue!) - 13)
            answer += diff
        }
        var temp = [Int]()
        for (i, c) in name.enumerated() {
            if c != "A" {
                temp.append(i)
            }
        }
        let a = temp.filter({
            $0 <= name.count / 2
        }).max() ?? 0
        let b = temp.filter({
            $0 > name.count / 2
        }).map({
            name.count - $0
        }).max() ?? 0
        let c = temp.max() ?? 0
        return answer + min(2 * a + b, a + b * 2, c)
    }
}
