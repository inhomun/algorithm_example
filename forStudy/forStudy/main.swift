//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ topping:[Int]) -> Int {
    var set2 = Set(topping)
    var arr = Array(repeating:0, count: topping.max()! + 1)
    var set1 = Set<Int>()
    var answer = 0
    for i in topping {
        arr[i] += 1
    }
    for j in topping {
        arr[j] -= 1
        set1.insert(j)
        if arr[j] <= 0 {
            set2.remove(j)
        }
        if set1.count == set2.count { answer += 1}
    }
    return answer
}
