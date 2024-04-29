//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var graph = Array(repeating: [(Int,Int)](), count: N + 1)
    for i in road {
        graph[i[0]].append((i[1],i[2]))
        graph[i[1]].append((i[0],i[2]))
    }
    var distance = Array(repeating: Int.max, count: N + 1)
    var queue = [(node: 1, dist:0)]
    distance[1] = 0
    while !queue.isEmpty {
        let (node, dist) = queue.removeFirst()
        
        if distance[node] < dist {
            continue
        }
        for (nextNode, nextDist) in graph[node] {
            if dist + nextDist < distance[nextNode] {
                distance[nextNode] = dist + nextDist
                queue.append((nextNode, dist + nextDist))
            }
        }
    }
    
    return distance.filter{ $0 <= k }.count
}
