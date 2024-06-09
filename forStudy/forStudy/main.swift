//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var answer : [Int] = [0, 0]
    let arrValue = arr.count
    func dfs(_ x: Int,_ y: Int,_ val: Int) {
        if val == 1 { answer[arr[x-1][y-1]] += 1
                    return }
        let base = arr[x-val][y-val]
        for i in x-val..<x {
            for j in y-val..<y {
                if arr[i][j] != base {
                    dfs(x-val/2, y, val/2)
                    dfs(x-val/2, y-val/2, val/2)
                    dfs(x, y-val/2, val/2)
                    dfs(x, y, val/2)
                    return
                }
            }
        }
        answer[base] += 1
        return
    }
    dfs(arrValue, arrValue, arrValue)
    return answer
}
