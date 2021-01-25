//
//  Programmers_다리를지나는트럭.swift
//  ProblemSolving
//
//  Created by 홍경표 on 2021/01/25.
//

import Foundation

class Programmers_다리를지나는트럭 {
    func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
        var bridge: [(Int, Int)] = []
        var next = 0
        var time = 0
        var totalWeight = 0
        while next < truck_weights.count {
            time += 1
            
            if bridge.first?.1 == bridge_length {
                totalWeight -= bridge.first!.0
                bridge.removeFirst()
            }
            if truck_weights[next] + totalWeight <= weight {
                bridge.append((truck_weights[next], 0))
                totalWeight += truck_weights[next]
                next += 1
            }
            for i in 0..<bridge.count {
                bridge[i].1 += 1
            }
        }
        return time + (bridge_length - bridge.last!.1) + 1
    }
}
