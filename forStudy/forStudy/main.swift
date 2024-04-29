//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var list = [String:[String]]()
    var answer = 1
    var lists = [Int]()
    for i in clothes {
        list[i[1], default: []].append(i[0])
    }
    for i in list {
        lists.append(i.value.count)
    }
    for (idx, i) in lists.enumerated() {
        answer *= (i+1)
    }
    return answer - 1
}
