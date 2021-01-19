//
//  Programmers_서울에서김서방찾기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/19.
//

import Foundation

class Programmers_서울에서김서방찾기 {
    func solution(_ seoul:[String]) -> String {
        let index = seoul.firstIndex(of: "Kim")!
        return "김서방은 \(index)에 있다"
    }
}
