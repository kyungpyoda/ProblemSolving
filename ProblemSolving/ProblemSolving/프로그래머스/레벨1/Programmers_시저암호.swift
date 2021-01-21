//
//  Programmers_시저암호.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/21.
//

import Foundation

class Programmers_시저암호 {
    func solution(_ s:String, _ n:Int) -> String {
        return s.utf16.reduce("", {
            guard $1 != UnicodeScalar(" ").value else { return $0 + " " }
            let temp = Int($1) + n
            if "a"..."z" ~= UnicodeScalar($1)! {
                return temp > UnicodeScalar("z").value ? "\($0)\(UnicodeScalar(temp - 26)!)" : "\($0)\(UnicodeScalar(temp)!)"
            } else {
                return temp > UnicodeScalar("Z").value ? "\($0)\(UnicodeScalar(temp - 26)!)" : "\($0)\(UnicodeScalar(temp)!)"
            }
        })
    }
}
