//
//  Programmers_기둥과보설치.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/27.
//

import Foundation

class Programmers_기둥과보설치 {
    var map: [[(Int, Int)]] = []
    var N = 0
    func solution(_ n:Int, _ build_frame:[[Int]]) -> [[Int]] {
        map = [[(Int, Int)]](repeating: [(Int, Int)](repeating: (0, 0), count: n+1), count: n+1)
        N = n
        for task in build_frame {
            if task[3] == 1 {
                make(x: task[0], y: task[1], a: task[2])
            } else {
                remove(x: task[0], y: task[1], a: task[2])
            }
            for m in map {
                print(m)
            }
        }
        print()
        for m in map {
            print(m)
        }
        var answer: [[Int]] = []
        for i in 0...n {
            for j in 0...n where map[i][j].0 == 1 || map[i][j].1 == 1 {
                print(j,i)
                if map[i][j].0 == 1 {
                    answer.append([j, i, 0])
                }
                if map[i][j].1 == 1 {
                    answer.append([j, i, 1])
                }
            }
        }
        return answer.sorted { (left, right) -> Bool in
            return left[0] != right[0] ? (left[0] < right[0]) : (left[1] != right[1] ? (left[1] < right[1]) : (left[2] < right[2]))
        }
    }
    
    func make(x: Int, y: Int, a: Int) {
        if check(x: x, y: y, a: a) {
            print("make",x,y,a)
            if a == 0 {
                map[y][x].0 = 1
            } else {
                map[y][x].1 = 1
            }
        } else {
            print("fail make",x,y,a)
        }
        
    }
    
    func remove(x: Int, y: Int, a: Int) {
        if a == 0 {
            guard map[y][x].0 != 0 else { return }
            map[y][x].0 = 0
        } else {
            guard map[y][x].1 != 0 else { return }
            map[y][x].1 = 0
        }
        for i in 0...N {
            for j in 0...N {
                guard map[i][j].0 == 1 || map[i][j].1 == 1 else { continue }
                if map[i][j].0 == 1 {
                    guard check(x: j, y: i, a: 0) else {
                        if a == 0 {
                            map[y][x].0 = 1
                        } else {
                            map[y][x].1 = 1
                        }
                        print("fail remove",x,y,a)
                        return
                    }
                }
                if map[i][j].1 == 1 {
                    guard check(x: j, y: i, a: 1) else {
                        if a == 0 {
                            map[y][x].0 = 1
                        } else {
                            map[y][x].1 = 1
                        }
                        print("fail remove",x,y,a)
                        return
                    }
                }
            }
        }
        print("remove",x,y,a)
    }
    
    func check(x: Int, y: Int, a: Int) -> Bool {
        if a == 0 {
            guard y == 0 || (y > 0 && map[y-1][x].0 == 1) || map[y][x].1 == 1 || (x > 0 && map[y][x-1].1 == 1)
            else { return false }
        } else {
            guard y > 0, (map[y-1][x].0 == 1 || (x < N && map[y-1][x+1].0 == 1))
                    || (x > 0 && x < N && map[y][x-1].1 == 1 && map[y][x+1].1 == 1)
            else { return false }
        }
        return true
    }
}
