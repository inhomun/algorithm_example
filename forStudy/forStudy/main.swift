//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var graph = [Int:[Int]]()
    for i in edge {
        graph[i[0], default: []].append(i[1])
        graph[i[1], default: []].append(i[0])
    }
    var distance = Array(repeating: -1, count: n)
    var queue = [(Int, Int)]()
    queue.append((1, 0))
    
    while !queue.isEmpty {
        let (node, length) = queue.removeFirst()
        if distance[node-1] == -1 {
            distance[node-1] = length
            for i in graph[node]! {
                    queue.append((i, length + 1))
            }
        }
    }
    let maxVal = distance.max()!
    return distance.filter{ $0 == maxVal }.count
}
