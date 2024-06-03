//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    let sortedcosts = costs.sorted(by: {$0[2] < $1[2] })
    var parent : [Int] = (0...n-1).map{ $0 }
    func unionSet(start: Int, end: Int) {
        var start = start
        var end = end
        
        start = findSet(start)
        end = findSet(end)
        if start != end {
            parent[end] = start
        }
    }
    func findSet(_ s: Int) -> Int {
        if parent[s] == s {
            return s
        }
        else {
            let parents = findSet(parent[s])
            parent[s] = parents
            for i in 0..<parent.count {
                if parent[i] == s {
                    parent[i] = parents
                }
            }
            return parents
        }
    }
    var result = 0
    for cost in sortedcosts {
        let start = findSet(cost[0])
        let end = findSet(cost[1])
        let value = cost[2]
        
        if start != end {
            result += value
            unionSet(start: start, end: end)
        }
    }
    
    return result
}
