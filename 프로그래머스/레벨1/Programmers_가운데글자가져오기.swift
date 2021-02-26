//
//  Programmers_가운데글자가져오기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation

class Programmers_가운데글자가져오기 {
    func solution(_ s:String) -> String {
        let center = s.index(s.startIndex, offsetBy: s.count / 2)
        return s.count % 2 == 0 ? String(s[s.index(before: center)...center]) : String(s[center])
    }
}
