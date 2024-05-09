//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var arr = [(index: Int, val: Int)]()
    for (idx,i) in priorities.enumerated() {
        arr.append((index: idx, val: i))
    }
    var cnt = 0
    while !arr.isEmpty {
        let (index, val) = arr.removeFirst()
        if arr.contains(where: { $0.val > val }) {
            arr.append((index, val))
        }
        else {
            cnt += 1
            if index == location {
                return cnt
            }
        }
    }
    return cnt
}
