//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ maps:[String]) -> [Int] {
    var map = [[Character]]()
    for i in maps{
        map.append(Array(i))
    }
    
    let maxX = maps[0].count
    let maxY = maps.count
    var visited = Array(repeating: Array(repeating: false, count: maxX), count: maxY)
    func dfs(_ x: Int,_ y: Int) -> Int  {
        if x < 0 || y < 0 || x >= maxX || y >= maxY {
            return 0
        }
        
        if visited[y][x] == true {
            return 0
        }
        
        if map[y][x] == "X"{
            visited[y][x] = true
            return 0
        }
        
        visited[y][x] = true
        var tmp = Int(String(map[y][x]))!
        // 상 하 좌 우로만 움직여야 하기 때문에
        return tmp + dfs(x, y + 1) + dfs(x, y - 1) + dfs(x + 1, y) + dfs(x - 1, y)
    }
   var result = [Int]()
    
    for i in 0..<maxY{
        for j in 0..<maxX{
            var a = dfs(j, i)
            if a > 0 {
                result.append(a)
            }
        }
    }
    
    
    return result.isEmpty ? [-1] : result.sorted(by: <)
}
