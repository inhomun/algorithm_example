//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var idx1 = 0
    var idx2 = 0
    var q1 = queue1
    var q2 = queue2
    var val1 = queue1.reduce(0, +)
    var val2 = queue2.reduce(0, +)
    while val1 != val2 {
        if val1 > val2 {
            if idx1 >= q1.count || idx1 >= queue1.count * 2 {
                break
            }
            let val = q1[idx1]
            val1 -= val
            val2 += val
            q2.append(val)
            idx1 += 1
        }
        else if val1 < val2 {
            if idx2 >= q2.count || idx2 >= queue2.count * 2 {
                break
            }
            let val = q2[idx2]
            val2 -= val
            val1 += val
            q1.append(val)
            idx2 += 1
        }
    }
    if val1 == val2 {
        return idx1 + idx2
    }
    else {
        return -1
    }
}
