//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//

import Foundation

func solution(_ babbling:[String]) -> Int {
    let filter = ["aya", "ye", "woo", "ma"]
    var count = 0
    for i in babbling {
        var tmp = ""
        for j in filter {
            if i.range(of: j) != nil {
            tmp += j
        }
        }
        if tmp.count == i.count {
            count += 1
        }
    }
    return count
}
