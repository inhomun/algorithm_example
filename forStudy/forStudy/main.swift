//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ board:[String]) -> Int {
    var visited = Array(repeating: Array(repeating: Int.max, count: board[0].count), count: board.count)
    var map = [[Character]]()
    var start = [Int]()
    var end = [Int]()
    for (idx,i) in board.enumerated() {
        if i.contains("R") {
            start.append(idx)
            start.append(Array(i).firstIndex(of: "R")!)
        }
        else if i.contains("G") {
            end.append(idx)
            end.append(Array(i).firstIndex(of: "G")!)
        }
        map.append(Array(i))
    }
    func dfs(_ dir: Character,_ x: Int,_ y: Int,_ val: Int) {
            if dir == "L" {
            if x-1 < 0 || map[x-1][y] == "D" {
                if map[x][y] == "G" {
                    if val < visited[x][y] {
                        visited[x][y] = val
                    }
                    return
                }
                if val < visited[x][y] {
                    visited[x][y] = val
                    dfs("R", x, y, val + 1)
                    dfs("U", x, y, val + 1)
                    dfs("D", x, y, val + 1)
                }
                else {
                    return
                }
            }
            else {
                dfs(dir, x-1, y, val)
            }
        }
        else if dir == "R" {
            if x+1 >= board.count || map[x+1][y] == "D" {
                if map[x][y] == "G" {
                    if val < visited[x][y] {
                        visited[x][y] = val
                    }
                    return
                }
                if val < visited[x][y] {
                    visited[x][y] = val
                    dfs("L", x, y, val + 1)
                    dfs("U", x, y, val + 1)
                    dfs("D", x, y, val + 1)
                }
                else {
                    return
                }
            }
            else {
                dfs(dir, x+1, y, val)
            }
        }
        else if dir == "U" {
            if y+1 >= board[0].count || map[x][y+1] == "D" {
                if map[x][y] == "G" {
                    if val < visited[x][y] {
                        visited[x][y] = val
                    }
                    return
                }
                if val < visited[x][y] {
                    visited[x][y] = val
                    dfs("L", x, y, val + 1)
                    dfs("R", x, y, val + 1)
                    dfs("D", x, y, val + 1)
                }
                else {
                    return
                }
            }
            else {
                dfs(dir, x, y+1, val)
            }
        }
        else if dir == "D" {
            if y-1 < 0 || map[x][y-1] == "D" {
                if map[x][y] == "G" {
                    if val < visited[x][y] {
                        visited[x][y] = val
                    }
                    return
                }
                if val < visited[x][y] {
                    visited[x][y] = val
                    dfs("L", x, y, val + 1)
                    dfs("U", x, y, val + 1)
                    dfs("R", x, y, val + 1)
                }
                else {
                    return
                }
            }
            else {
                dfs(dir, x, y-1, val)
            }
        }
    }
    dfs("L",start[0],start[1],1)
    dfs("R",start[0],start[1],1)
    dfs("U",start[0],start[1],1)
    dfs("D",start[0],start[1],1)
    if visited[end[0]][end[1]] == Int.max {
        return -1
    }
    else {
        return visited[end[0]][end[1]]
    }
}
