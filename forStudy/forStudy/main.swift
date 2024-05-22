//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ maps:[String]) -> Int {
    var start = [Int]()
    var lever = [Int]()
    var map = [[Character]]()
    var answer1 = [Int]()
    var answer2 = [Int]()
    for (x,i) in maps.enumerated() {
        if i.contains("S") {
            for (y, j) in Array(i).enumerated() where j == "S" {
                start.append(x)
                start.append(y)
            }
        }
        if i.contains("L") {
            for (y, j) in Array(i).enumerated() where j == "L" {
                lever.append(x)
                lever.append(y)
            }
        }
        map.append(Array(i))
    }
    var visited = Array(repeating: Array(repeating: false, count: map[0].count), count: map.count)
    func bfs(_ startX: Int, _ startY: Int, _ target: Character, _ val: Int) {
    var queue: [(x: Int, y: Int, val: Int)] = [(startX, startY, val)]
    
    let directions = [(1, 0), (0, 1), (-1, 0), (0, -1)]
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        let x = current.x
        let y = current.y
        let currentVal = current.val
        
        if x < 0 || y < 0 || x >= map.count || y >= map[0].count || visited[x][y] || map[x][y] == "X" {
            continue
        }
        
        if map[x][y] == target {
            if target == "L" {
                answer1.append(currentVal)
            } else {
                answer2.append(currentVal)
            }
            return
        }
        
        visited[x][y] = true
        
        for direction in directions {
            let newX = x + direction.0
            let newY = y + direction.1
            queue.append((newX, newY, currentVal + 1))
        }
    }
}
    bfs(start[0],start[1],"L",0)
    visited = Array(repeating: Array(repeating: false, count: map[0].count), count: map.count)
    bfs(lever[0],lever[1],"E",0)
    if answer1.isEmpty || answer2.isEmpty {
        return -1
    }
    else {
        return answer1.min()! + answer2.min()!
    }
}
