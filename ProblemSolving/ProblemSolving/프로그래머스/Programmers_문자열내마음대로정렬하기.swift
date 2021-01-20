//
//  Programmers_문자열내마음대로정렬하기.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/17.
//

import Foundation

class Programmers_문자열내마음대로정렬하기 {
    func solution(_ strings:[String], _ n:Int) -> [String] {
        return strings.sorted(by: { a, b in
            return a[a.index(a.startIndex, offsetBy: n)] != b[b.index(b.startIndex, offsetBy: n)] ? a[a.index(a.startIndex, offsetBy: n)] < b[b.index(b.startIndex, offsetBy: n)] : a < b
        })
    }
}
