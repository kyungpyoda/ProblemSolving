//
//  Programmers_핸드폰번호가리기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_핸드폰번호가리기 {
    func solution(_ phone_number:String) -> String {
        return String(repeating: "*", count: phone_number.count - 4) + phone_number[phone_number.index(phone_number.startIndex, offsetBy: phone_number.count - 4)..<phone_number.endIndex]
    }
}
