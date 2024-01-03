//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ numbers:[Int]) -> Int {
    var filter = [0,1,2,3,4,5,6,7,8,9]
    for i in numbers {
        for (idx,j) in filter.enumerated() {
            if i == j {
                filter.remove(at: idx)
            }
        }
    }
    return filter.reduce(0, +)
}
