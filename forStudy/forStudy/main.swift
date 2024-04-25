//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ order:[Int]) -> Int {
    var index = 0
    var tmp = 1
    var arr = [Int]()
    while tmp < order.count + 1 || index < order.count{
        if arr.last == order[index] {
            index += 1
            arr.popLast()
        }
        else if tmp <= order.count {
            arr.append(tmp)
            tmp += 1
        }
        else if tmp > order.count {
            break
        }
    }
    return index
}
