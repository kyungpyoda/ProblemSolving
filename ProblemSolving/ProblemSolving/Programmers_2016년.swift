//
//  Programmers_2016년.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation
class Programmers_2016년 {
    func solution(_ a:Int, _ b:Int) -> String {
        let dayOfWeek = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
        let daysOfMonth = [31,29,31,30,31,30,31,31,30,31,30,31]
        let count = (0..<a).reduce(0, { $0 + daysOfMonth[$1]}) + b - 1
        return dayOfWeek[(5 + count) % 7]
    }
}
