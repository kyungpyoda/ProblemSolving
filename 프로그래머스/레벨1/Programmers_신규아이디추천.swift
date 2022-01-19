//
//  Programmers_신규아이디추천.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/16.
//

import Foundation

class Programmers_신규아이디추천 {
  
    func solution(_ new_id:String) -> String {
        let newID = new_id

        return step7(step6(step5(step4(step3(step2(step1(newID)))))))
    }

    func step1(_ str: String) -> String {
        return str.lowercased()
    }

    func step2(_ str: String) -> String {
        let validLetters = Set("0123456789abcdefghijklmnopqrstuvwxyz-_.")
        return String(str.compactMap { 
            validLetters.contains($0) ? $0 : nil
        })
    }

    func step3(_ str: String) -> String {
        var result = ""
        for c in str {
            if c == "." && result.last == "." { continue }
            result.append(c)
        }
        return result
    }

    func step4(_ str: String) -> String {
        var newStr = str
        if newStr.first == "." {
            newStr = String(newStr.dropFirst())
        }
        if newStr.last == "." {
            newStr = String(newStr.dropLast())
        }
        return newStr
    }

    func step5(_ str: String) -> String {
        return str.isEmpty ? "a" : str
    }

    func step6(_ str: String) -> String {
        let newStr = str.prefix(15)
        return newStr.last == "." ? String(newStr.dropLast()) : String(newStr)
    }

    func step7(_ str: String) -> String {
        let lastLetter = str.last ?? Character("")
        return str + String(repeating: lastLetter, count: max(0, 3 - str.count))
    }

}
