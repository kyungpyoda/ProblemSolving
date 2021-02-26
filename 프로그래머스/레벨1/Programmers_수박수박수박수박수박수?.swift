//
//  Programmers_수박수박수박수박수박수?.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_수박수박수박수박수박수 {
    func solution(_ n:Int) -> String {
        return String(repeating: "수박", count: n/2) + (n % 2 == 0 ? "" : "수")
    }
}
