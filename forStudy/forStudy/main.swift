//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for i in 0..<arr1.count {
        var row: [Int] = []
        for j in 0..<arr1[0].count {
            row.append(arr1[i][j] + arr2[i][j])
        }
        result.append(row)
    }
    return result
}
