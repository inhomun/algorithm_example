//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: -1, count: n), count: n)
    var x = 0
    var y = 0
    var dir = 0
    if n == 1 {
        return [[1]]
    }
    for a in 1...n*n {
        answer[x][y] = a
        
        if dir == 0 {
            if y+1 == n || answer[x][y+1] != -1 {
                dir += 1
                x += 1
            }
            else {
                y += 1
            }
        }
        else if dir == 1 {
            if x+1 == n || answer[x+1][y] != -1 {
                dir += 1
                y -= 1
            }
            else {
                x += 1
            }
        }
        else if dir == 2 {
            if y-1 < 0 || answer[x][y-1] != -1 {
                dir += 1
                x -= 1
            }
            else {
                y -= 1
            }
        }
        else if dir == 3 {
            if x-1 < 0 || answer[x-1][y] != -1 {
                dir = 0
                y += 1
            }
            else {
                x -= 1
            }
        }
    }
    return answer
}
