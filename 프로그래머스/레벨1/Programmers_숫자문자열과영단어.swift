//
//  Programmers_숫자문자열과영단어.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/16.
//

import Foundation

class Programmers_숫자문자열과영단어 {
    enum DecimalNumber: String {
        case zero
        case one
        case two
        case three
        case four
        case five
        case six
        case seven
        case eight
        case nine

        var value: Character {
            switch self {
                case .zero: return "0"
                case .one: return "1"
                case .two: return "2"
                case .three: return "3"
                case .four: return "4"
                case .five: return "5"
                case .six: return "6"
                case .seven: return "7"
                case .eight: return "8"
                case .nine: return "9"
            }
        }
    }

    func solution(_ s:String) -> Int {
        var result: String = ""
        var temp: String = ""
        for c in s {
            if c.isNumber {
                result.append(c)
            } else {
                temp.append(c)
                if let number = DecimalNumber(rawValue: temp) {
                    result.append(number.value)
                    temp = ""
                }
            }
        }
        return Int(result) ?? 0
    }
}
