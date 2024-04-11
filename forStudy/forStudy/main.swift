//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var Arr = [[Int]]()
    let total = brown + yellow
    for i in 1...total/2 {
        if total % i == 0 && i >= 3{
            Arr.append([i, total/i])
        }
    }
    for j in Arr {
        var b = 0
        var y = 0
        for k in 0..<j[0] {
            for l in 0..<j[1] {
                if k == 0 || k == j[0]-1 || l == 0 || l == j[1]-1 {
                    b += 1
                }
                else {
                    y += 1
                }
            }
        }
        if b == brown && y == yellow {
            return [max(j[0],j[1]), min(j[0],j[1])]
        }
    }
    return [1, 1]
}
