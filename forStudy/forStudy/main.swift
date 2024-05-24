//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ data:[[Int]], _ col:Int, _ row_begin:Int, _ row_end:Int) -> Int {
    var sortedData = data.sorted{ if $0[col-1] == $1[col-1] {
                                    return $0[0] > $1[0]
                                }
                                else {
                                    return $0[col-1] < $1[col-1]
                                }
                                }
    var arr = [Int]()
    for i in row_begin-1..<row_end {
        var answer = 0
        for j in 0..<sortedData[i].count {
            answer += (sortedData[i][j] % (i + 1))
        }
        arr.append(answer)
    }
    var a = arr[0]
    for i in 1..<arr.count {
        a = a ^ arr[i]
    }
    return a
}
